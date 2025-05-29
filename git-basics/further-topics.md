# Further Topics

Want to dive into some more advanced topics in Git? Here are a few useful commands that
were beyond the scope of this guide, but are nevertheless useful to know.

## `git cherry-pick`

Got a commit from another branch that you want to apply to your current branch?
Use [`git cherry-pick`](https://git-scm.com/docs/git-cherry-pick) to apply a specified
commit to your current branch. This is useful when you want to apply a specific change
without merging the entire branch.

## `git reset`

Made some commits that you want to undo? Use
[`git reset`](https://git-scm.com/docs/git-reset) to move the current branch pointer to
a previous commit.

<details><summary><b>Example (screenshot)</b></summary>
<img src="./img/git-reset-example.png" alt="Example using `git reset`">
</details>

## `git stash`

Made some changes but aren't ready to commit them yet? Use
[`git stash`](https://git-scm.com/docs/git-stash) to save your changes temporarily. This
command will clear your working directory, allowing you to switch branches or pull
changes without losing your work. You can later retrieve your stashed changes with `git
stash apply` or `git stash pop`. The former applies the change without removing it from
the stash, while the latter applies the change while also removing the entry (record of
those changes!) from the stash.

<details><summary><b>Example (screenshot)</b></summary>
<img src="./img/git-stash-example.png" alt="Example using `git stash pop`">
</details>
