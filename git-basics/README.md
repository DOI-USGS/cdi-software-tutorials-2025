# Git Basics

Introductory tutorial on Git basics.

## Pre-tutorial Instructions

This tutorial will use Git and Bash. You can use a basic terminal and a text editor or an editor
with an integrated terminal like [VSCode](https://code.visualstudio.com/). See the following
instructions to ensure the necessary software is installed on your computer.

--> make sure users switch to bash (e.g. default shell on Macs is now zsh)

- [Setting up Git and Bash on Windows](./pages/prereq-windows.md)
- [Setting up Git and Bash on Mac or Linux](./pages/prereq-mac-linux.md)

If `git --version` shows anything other than the version, go to CDI-Software office hours or see us before class...

## Tutorial Slides and Recording

- Slides: [<PlaceHolder>]()
- Recording: [<PlaceHolder>]()
- Resources: [resources.md](resources.md)

## Tutorial Outline

1. [What is Git (and why should I use it)?][./pages/what-is-git.md]
   1. What is GitLab and GitHub?
   2. Use cases
   3. Mental model of git
      1. philosophical questions, e.g. what should be commited or not?
      2. Git history - smush commits, commit --amend (and when this is OK or not)
   4. Overview of the forking workflow so they know what we're aiming for, even though we're focusing on local git commands
2. [Git reference commands](./pages/git-help-and-cofig.md)
   1. git help
   2. git config - brief intro (set username...)

Examples for hands on work / exercises
--> which topics are most important in case we run out of time (e.g. git stash less important than branch/merge/rebase)
--> markdown doc for each exercise, with relevant git diagrams or other materials, etc. (this is a test... may organize)
--> it may be useful to have mini-lectures between exercises for more background information

1. [Exercise 1](./pages/ex1-clone-and-setup.md): clone the upstream repository and get set up
   1. git config username
   2. .gitignore
   3. git init
   4. git remote -v (demo)
      1. managing remotes <- should we have them rename origin to upstream?
2. [Exercise 2](./pages/ex2-local-branch.md): create a local branch
   1. switch between branches (git switch or git checkout -b branch)
   2. make changes on branch, add, commit -m
      1. what is staging?
      2. git status
      3. git diff
      4. git revert
      5. git add -p ?
      6. git log
      7. Show this in different settings? terminal, text editor, vscode git extension
   3. repeat on a second branch (causing a conflict)
3. git fetch - grab branch B or a third branch?
4. git branch <- to show the list of branches (and the active branch of shell integration isn't set up to show the current branch in the prompt)
   1. side note about how presenter's terminals have customized prompts that show the git branch, provide links to show how to set this up
5. [Exercise 3](./pages/ex3-merge-and-rebase.md): merge vs. rebase
   1. merge branch A into main (this is local, normally you'd pull from upstream into main after a merge/pull request on remote)
      1. git merge -p ?
   2. rebase branch B from main
      1. merge conflict
         1. what does it look like in terminal, editor, gui, etc. from different presenters
   3. git log to show the history
   4. git blame

6. git stash (lower priority)
   1. why would you push to stash
   2. how to pop off the stash or use an object from the stash
7. git cherry-pick
8. git reset
9. git hooks <- what they are and maybe show a very simple "Hello World" example (may be too advanced)
