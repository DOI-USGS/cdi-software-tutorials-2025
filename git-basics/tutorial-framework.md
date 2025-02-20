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

Notes on [Learn Git Brancing](https://learngitbranching.js.org/):

- good explanation of the basics, but then moves into operations that I've never used,
  e.g. moving branches (`git branch -f BRANCH SHA`), though I think it does reinforce
  the concepts
- remote operation topics
  - more complicated examples, again a number of things I've never needed to do

## Platform notes

- I don't know almost anything about using git on Windows (gitbash? WSL/WSL2?)
- ... or GitHub Desktop
- vscode, RStudio, etc.
- do we want a platform-independent sandbox for people to use? (to avoid installation
  on their own computers...)

## When, when, where, why, and how

- How to get help: `git help` and `git help COMMAND`
- Git terminology
  - repository
  - git history (git log)
  - fork
  - branch
  - HEAD, working tree, detached HEAD...
  - commit
  - staging area
  - tracked vs. untracked files
- Git commands
  - checkout / switch
  - add
  - commit
  - fetch + merge = pull
  - fetch + rebase = pull --rebase
  - push
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
  - e.g. the FSP guidance is in git (Katy Barnhart [via Julie Herrick]), which
    is a repo for the source code for sphinx docs
