# Further Topics

Want to dive into some more advanced topics in Git? Here are a few useful commands that
were beyond the scope of this guide, but are nevertheless useful to know.

- [Further Topics](#further-topics)
  - [Git command completion and prompt](#git-command-completion-and-prompt)
  - [`git cherry-pick`](#git-cherry-pick)
  - [`git reset`](#git-reset)
  - [`git stash`](#git-stash)
  - [`git blame`](#git-blame)
  - [`git add -p`](#git-add--p)
  - [Git *refspec*](#git-refspec)
  - [Tutorial Pages](#tutorial-pages)

## Git command completion and prompt

Tired fingers? On the command line, *command completion* allows you to hit the *Tab* key after
typing the first few letters of a command to *complete* the matching Git command. Documentation to
set up command completion, and the Git prompt, for the bash shell is in the
[Git Pro book, Appendix A1.6][git-completion] (also available for other shells).

[git-completion]: https://git-scm.com/book/en/v2/Appendix-A:-Git-in-Other-Environments-Git-in-Bash "This is a non-Federal link"

## `git cherry-pick`

Got a commit from another branch that you want to apply to your current branch?
Use [`git cherry-pick`](https://git-scm.com/docs/git-cherry-pick) to apply a specified
commit to your current branch. This is useful when you want to apply a specific change
without merging the entire branch.

## `git reset`

Made some commits that you want to undo? Use
[`git reset`](https://git-scm.com/docs/git-reset) to move the current branch pointer to
a previous commit.

<details><summary>Example (screenshot)</summary>

<img src="./img/git-reset-example.png" alt="Example using `git reset`" width="600">

</details>

Or, you can *unstage* files with `git reset filename` and they will return to the
working directory, retaining the changes. You can undo the last *n* commits with
`git reset HEAD~n`. Git `reset` defaults to `--mixed` mode, which preserves changed
files but does not leave them *staged*. `--soft` mode simply resets *HEAD* to the specified
commit (as all modes do) and leaves changes *staged*, and `--hard` resets the index and the
working tree and any changes to tracked files since the target commit are discarded.

## `git stash`

Made some changes but aren't ready to commit them yet? Use
[`git stash`][git-stash-docs] to save your changes temporarily. This
command will clear your working directory, allowing you to switch branches or pull
changes without losing your work. You can later retrieve your stashed changes with `git
stash apply` or `git stash pop`. The former applies the change without removing it from
the stash, while the latter applies the change while also removing the entry (record of
those changes!) from the stash.

[git-stash-docs]: https://git-scm.com/docs/git-stash "This is a non-Federal link"

<details><summary><b>Example (screenshot)</b></summary>

<img src="./img/git-stash-example.png" alt="Example using `git stash pop`" width="600">

</details>

## `git blame`

Want to see who last changed a particular line in a file?
[`git blame FILE`](https://git-scm.com/docs/git-blame) shows the revision and author that
last modified each line of a file.

## `git add -p`

Only want to commit some of the changes in an individual file and not others? Use the `--patch`
(or `-p`) argument when you add one or more files (e.g. `git add -p some-file`). Git will
interactively step through each block of changes in the file(s) to ask which changes you want to
commit. See the interactive mode section of the `git help add` documentation.

## Git *refspec*

You'll eventually run across *refspec* in Git manuals for things like *pull*, *push*, *merge*, and
*rebase*. A *refspec* can be as simple as the name a branch name you want to act on or apply. It
can also be any valid Git ID (hash or reference, etc.), or it can specify a *source* and a
*destination* in the form *source:destination*. So, for example, you could *push* a local branch to
a remote branch of a different name (e.g. if you made a mistake naming your branch) with
`git push origin local-embarrasing-branch-name:remote-professional-branch-name`, which pushes your
poorly-named local branch to the remote *origin* repository with a new and improved branch name.

---

## Tutorial Pages

0. [Tutorial Index](README.md#tutorial-outline)
1. [What is Git (and why should I use it)?](what-is-git.md)
2. [Git reference commands](git-help-and-config.md)
3. [Initialization or cloning and basic settings](git-going.md) (and *[Exercise 1](ex1-clone-and-setup.md)*)
4. [Branches, commits, and history](branching-commits-history.md) (and *[Exercise 2](ex2-local-branch-and-commit.md)*)
5. [Pulling it together - merging and rebasing](merging-and-rebasing.md) (and *[Exercise 3](ex3-merge-and-rebase.md)*)
6. And more!

---
