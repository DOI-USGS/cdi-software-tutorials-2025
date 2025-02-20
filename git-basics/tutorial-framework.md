# Framework for git basics tutorial

Target is a 1.5-3 hour tutorial with plenty of hands-on examples and exercises

Format ideas ([Learn Git Brancing](https://learngitbranching.js.org/) seems to have a pretty
useful format):

- Basic commands (commit, branch, merge, ...)
  - slides and hands-on examples
- Local operations, daily workflow and common commands
  - slides and then hands-on examples
- ...
  - `git help` and `git help COMMAND`
  - Create a new, empty repo with `git init NEW_REPO`
  - Clone an existing repo with `git clone ...`
  - `git status`
  - `git add`
  - `git commit`

## Platform notes

- I don't know almost anything about using git on Windows (gitbash? WSL/WSL2?)
- ... or GitHub Desktop
- vscode, RStudio, etc.

## When, when, where, why, and how

- How to get help: `git help` and `git help COMMAND`
- Git terminology
  - repository
  - git history (git log)
  - fork
  - branch
  - checkout / switch
  - HEAD, working tree
  - commit
  - staging area
  - push, pull, merge
  - tracked vs. untracked files
  - .gitignore
- What does it mean to squash history? (and how it can change the history)
- Commits
  - Add files to "staging"
  - creating a commit, commit messages
  - how to ammend a commit, and why/when to do it
- Rebasing
  - What is it and what is it for?
  - How and when to use it?
- Git hooks - automatically run tasks when you commit, push, etc.
  - code linting
  - run tests
  - clean up notebooks
- SSH vs. HTTPS?
  - set up gitlab access tokens

## Use cases

- code projects
  - Individual or collaborative
- non-code projects
  - e.g. the FSP guidance is in git (Katy Barnhart [via Julie Herrick])
