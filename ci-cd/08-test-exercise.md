# Test Exercise

![Test for Edge Cases Comic](https://www.explainxkcd.com/wiki/images/b/b8/bug.png)

<details>
  <summary>Test the helloworld package</summary>
  
1. Run tests in the tests folder: `uv run pytest`
2. Run the tests and include a coverage report
    -  `uv run pytest --cov helloworld`
    -  `uv run coverage html`
3. Examine the coverage file in the browser by opening htmlcov/index.html
  
</details>

## Setting up the GitLab Pipeline Jobs for Testing
Take a moment to update your .gitlab-ci.yml Test job.

<details>
  <summary>Template Changes</summary>
  
```diff 
Test:
  script:
    - echo "Test Python code"
+   - uv run pytest tests --cov helloworld
  stage: check
```
</details>


## Visualizing Coverage in GitLab

In GitLab you can visualize your coverage by creating a coverage.xml file in a job and saving it as an artifact. 

<details>
  <summary>Template Changes</summary>
  
```diff 
Test:
+ artifacts:
+   reports:
+     coverage_report:
+       coverage_format: cobertura
+       path: coverage.xml
  script:
    - echo "Test Python code"
+   - uv run pytest tests --cov helloworld
+   - uv run coverage xml
  stage: check
```
</details>

There are lots of examples of how to do this for other language in the [GitLab documentation][1].

---
# Navigation

[Next --> Build Exercise](./09-build-exercise.md#build-exercise)

[Previous <-- Lint Exercise](./07-lint-exercise.md#lint-exercise)

[1]: https://docs.gitlab.com/ci/testing/code_coverage/cobertura  "This is a non-Federal link"