# Tasks Exercise

Tasks make life easier by adding step(s) that can be run using a single command. Commonly in Python tasks are orchestrated using a helper library like [Poe the Poet][1]. Similarly NPM for Javascript allows [scripts][2] and package tasks in Ruby can be performed with a helper library like [Rake][3].


Examine the poe task that is currently in the pyproject.toml.

<details>
  <summary>Current lint task</summary>

- Run the task with: `uv run poe lint`

</details>

<br>
Try writing additional tests. One for each we previously covered with the names: "audit", "lint", "test", "build". Setup the test task to create the coverage report that GitLab will use.

<br>

<details>
  <summary>All tasks solution</summary>

    ```
    audit = [
    { shell = "uv audit" }
    ]
    lint = [
    { shell = "isort . --check" },
    { shell = "black . --check" },
    { shell = "mypy helloworld --strict" },
    ]
    test = [
    { shell = "pytest tests --cov helloworld" },
    { shell = "coverage xml" }
    ]
    build = [
    { shell = "uv build" }
    ]

    ```
</details>

<br>

We might want to make tasks that solve problems. Try writing a task that fixes all of our linting errors. Name it "fix".

> If you need a hint, look back at the [tools page](./02-tools.md)

<details>
  <summary>Fix Solution</summary>

    ```
    fix = [
    { shell = "isort ." },
    { shell = "black ." },
    ]
    ```

</details>

<br>

Run the new fix task: `uv run poe fix`

## Fix Remaining Issues
Note that the mypy error is not fixed. Let us ignore one and fix one in main.py:
   1. Ignore setting the return type for `hello` by adding `# type: ignore [no-untyped-def]` next to the function
   2. Update the argument `name` of `say_hello` to type `str`

Update the test so that it will pass
   1. Update all instances of `say_hello` to `hello` in test_main.py

## Rerun Checks
Now we have all of our auditing, testing, and linting fixed! Let's rerun all of the checks, but this time use tasks. **Take a look at the timer and take note of the time when you finish.**

1. `uv run poe audit`
2. `uv run poe lint`
3. `uv run poe test`
4. `uv run poe build`

## Grouping Tasks

Group tasks to run in sequence: `check = ["lint", "test"]`

Group tasks to run in parallel: `check.parallel = ["lint", "test"]`


## Setting up the GitLab Pipeline to use Tasks
Take a moment to update your .gitlab-ci.yml to use our tasks for each job.

<details>
  <summary>Template Changes</summary>

```diff 
## -------------------------------------
#  Audit Stage
## -------------------------------------

Audit:
  script:
    - echo "Check Python dependencies"
-   - uv audit
+   - uv run poe audit
  stage: audit

## -------------------------------------
#  Install Stage
## -------------------------------------

Install:
  artifacts:
    expire_in: 1 week
    paths:
      - .venv
  script:
    - echo "Install Python dependencies"
   - uv sync
  stage: install

## -------------------------------------
#  Check Stage
## -------------------------------------

Lint:
  script:
    - echo "Lint Python code"
-   - uv run isort . --check
-   - uv run black . --check
-   - uv mypy helloworld --strict
+   - uv run poe lint
  stage: check

Test:
  artifacts:
    reports:
      coverage_report:
        coverage_format: cobertura
        path: coverage.xml
  script:
    - echo "Test Python code"
-   - uv run pytest tests --cov helloworld
-   - uv run coverage xml
+   - uv run poe test
  stage: check

## -------------------------------------
#  Build Stage
## -------------------------------------

Build:
  artifacts:
    expire_in: 1 week
    paths:
      - dist/*
  rules:
    # Do not run automatically. Require a manual trigger.
    - when: manual
  script:
    - echo "Build Python code"
-   - uv build
+   - uv run poe build
  stage: build

```
</details>


It is great that we have ensured consistency between what we run locally and in the pipeline. However, it doesn't really help if we don't remember to run them locally before pushing changes up to the Git Platform.

> How many of you have pushed a commit and had your pipeline immediately fail because of a linting error? I know I have lots of commits with the message: "Fix lint". **This is where Git hooks can come in handy**



---
# Navigation

[Next --> Git Hooks Exercise](./12-git-hooks-exercise.md#git-hooks-exercise)

[Previous <-- Run All Checks](./10-run-all-checks.md#run-all-checks)

[1]: https://poethepoet.natn.io/index.html "This is a non-Federal link"
[2]: https://docs.npmjs.com/cli/v8/using-npm/scripts "This is a non-Federal link"
[3]: https://ruby.github.io/rake/ "This is a non-Federal link"