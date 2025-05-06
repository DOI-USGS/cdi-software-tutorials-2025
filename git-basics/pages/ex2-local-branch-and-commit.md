# Exercise 2: create a branch

## Exercise 2 Goals

- Branches
  - Create a new branch
  - Switch between branches
  - Get information about branches
- Making changes on a branch
  - Staging
  - Commits
  - Status
  - Diffs

## The exercise

1. switch between branches (git switch or git checkout -b branch)
   1. Switch to a new branch based on current HEAD
      1. TODO: hide solutions with `<details>` & `<summary>` tags?
      2. `git switch -c new_branch` <-- this is the newer preferred method
      3. `git checkout -b new_branch` <-- this is an older but equivalent method
   2. Get information about branches
      1. `git branch`
      2. `git branch -a`
2. make changes on branch, add, commit -m
   1. make changes to root README.md, etc., so our MR can modify the same lines for conflicts
   2. what is staging?
   3. git status
   4. git diff
   5. git revert
   6. git add -p ?
   7. git log
   8. Show this in different settings? terminal, text editor, vscode git extension
3. repeat on a second branch (causing a conflict)

------

## Navigation

- [**Tutorial Index**](../README.md#tutorial-outline)
- Previous --> [Exercise 1](./ex1-clone-and-setup.md)
- Next --> [Exercise 3](./ex3-merge-and-rebase.md)

------
