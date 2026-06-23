# Exercise Setup

## Python Project Structure

| Local Path in Repository | Content Description |
|---|---|
| pyproject.toml  | Configuration file. Defines basic metadata,<br>paths to source code, dependencies, etc.  |
|  helloworld |  Folder with the example Python code |
|  tests |  Folder with a test for helloworld/main.py |
| uv.lock | (doesn't exist yet) A dependency lock file with all installed packages' version and download url(s) |
| .venv | (doesn't exist yet) Folder where the virtual environment with all installed dependencies is located |

<details>
  <summary>Let us get started</summary>

1. Open a terminal with python and Git
2. Open an IDE (e.g. VSCode, notepad++) 
3. In both the terminal and IDE navigate to the local repository folder: `cd <path to local repository>`
4. In the terminal, create the project lock file without installing dependencies: `uv lock`
> Why wouldn't we want to install dependencies yet?

Lock files are incredibly useful, because they include a snapshot of an environment which is useful for both reproducibility and auditing the dependencies to be installed.

</details>

---
# Navigation

[Next --> Audit Exercise ](./06-audit-exercise.md#audit-exercise)

[Previous <-- Hands-on Goal](./04-hands-on-goal.md#hands-on-goal)

[1]: https://packaging.python.org/en/latest/guides/writing-pyproject-toml/ "This is a non-Federal link"