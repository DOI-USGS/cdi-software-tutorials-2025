# Build Exercise

In general build means the process of taking source code and preparing it for distribution as a software product. For distribution to the commonly used [Python Package Index (PyPI)][1], you will [need][2] to create a tar file of your source code and a [wheel][3] file, which is the binary distribution format for Python. 


<details>
  <summary>Build Our Package</summary>
  
1. Build the package: `uv build`
2. Examine the files in the dist/ folder
  
</details>


## Setting up the GitLab Pipeline Jobs for Building
Take a moment to update your .gitlab-ci.yml Build job.

<details>
  <summary>Template Changes Part 1</summary>
  
```diff 
Build:
  rules:
    # Do not run automatically. Require a manual trigger.
    - when: manual
  script:
    - echo "Build Python code"
+   - uv build
  stage: build
```

> Is this helpful as is?


<details>
  <summary>Template Changes Part 2</summary>
  
```diff 
Build:
+ artifacts:
+   expire_in: 1 week
+   paths:
+     - dist/*
  rules:
    # Do not run automatically. Require a manual trigger.
    - when: manual
  script:
    - echo "Build Python code"
+   - uv build
  stage: build

```

Now the tar and wheel can be downloaded and attached to a release.

</details>

</details>

---
# Navigation

[Next --> Run All Checks](./10-run-all-checks.md#run-all-checks)

[Previous <-- Test Exercise](./08-test-exercise.md#test-exercise)

[1]: https://pypi.org/  "This is a non-Federal link"
[2]: https://packaging.python.org/en/latest/guides/distributing-packages-using-setuptools/#uploading-your-project-to-pypi  "This is a non-Federal link"
[3]: https://packaging.python.org/en/latest/specifications/binary-distribution-format/  "This is a non-Federal link"