# Git Hooks Exercise

Git hooks are scripts that are automatically run for pre-defined git actions. By default git will provide samples of scripts for specific actions in a local repository's `.git/hooks` folder. Don't worry if your local repository doesn't have them; they can also be found in the [Git repository][2].


**List the files in the .git/hooks directory:** `ls -la .git/hooks`. In order for the scripts to actually run, the file name has to be the **action** rather the **action.sample**.

Let's write a hook that runs before we commit changes to run our checks. Remember that scripts in shell should have `#!/bin/sh` at the top and adding a line with `set -e` will ensure that our script exits after any error. Rename **pre-commit.sample** to **pre-commit** and replace the file's contents with your solution.


<details>
<summary>Full Pre Commit Hook </summary>

```bash
#!/bin/sh
# set that the script will immediately exit upon error
set -e

uv run poe audit;
uv run poe lint;
uv run poe test;
```
</details>


We have made plenty of changes in this local repository. Try staging the changed files for a commit (`git add <files>`), and then commit them with a message (`git commit -m "Enforcing CI/CD practices with tasks"`).

This should have completed since we fixed all the problems, but you will have seen the checks run.

Now try introducing an error (make a test fail, add poor formatting, etc.) and try committing the changes.

---
# Navigation

[Next --> Final Pipeline](./13-final-pipeline.md#final-pipeline)

[Previous <-- Tasks Exercise](./11-tasks-exercise.md#tasks-exercise)

[1]: https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks "This is a non-Federal link"
[2]: https://github.com/git/git/tree/master/templates/hooks "This is a non-Federal link"
