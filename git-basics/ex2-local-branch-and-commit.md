# Exercise 2: create a branch

Background information: [Git branches, commits, and history](./branching-commits-history.md)

## Exercise 2 Goals

- Build on [Exercise 1](./ex1-clone-and-setup.md)
- Branches
  - Create a new branch
  - Switch between branches
  - Get information about branches
- Making changes on a branch
  - Staging
  - Commits
  - Status
  - Diffs

## Create a new branch and use it

1. Create a new branch, list branches, and switch to the new branch

<details><summary>Solution</summary>

```bash
(main=) $ git branch -c new-feature

(main=) $ git branch
* main
  new-feature

(main=) $ git switch new-feature
Switched to branch 'new-feature'
Your branch is up to date with 'origin/main'.

(new-feature=) $ 
```

</details>

2. In one command, create and switch to a new branch

<details><summary>Solution</summary>

```bash
(new-feature) $ git switch -c another-new-feature
Switched to a new branch 'another-new-feature'

(another-new-feature) $ 
```

</details>

3. Switch back to your first new branch, list *all* existing branches, and delete the second new
   branch (hint: `git help`)

<details><summary>Solution</summary>

```bash
(another-new-feature) $ git switch new-feature
Switched to a new branch 'new-feature'

(new-feature) $ git branch -a
  another-new-feature
  main
* new-feature
  remotes/origin/HEAD -> origin/main
  remotes/origin/main

(new-feature) $ git branch -d another-new-feature
Deleted branch another-new-feature (was 1c48b3c).
```

Note that `git branch -d` will not delete a branch that contains unmerged changes. You can force
this with `-D` at the risk of losing work.

</details>

## Committing

1. Create a new file and add it to staging. Check the status of your working directory as you go

<details><summary>Solution</summary>

```bash
(new-feature) $ echo "Hello" > new-file.txt

(new-feature %) $ git status
On branch new-feature
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        new-file.txt

nothing added to commit but untracked files present (use "git add" to track)

(new-feature %) $ git add new-file.txt

(new-feature %) $ git status
On branch new-feature
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   new-file.txt
```

</details>

2. Commit your new file (with a commit message) and check the log

<details><summary>Solution</summary>

```bash
(new-feature %) $ git commit -m 'add new file'
[new-feature f66c014] adding new file
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 new-file.txt
```

</details>

3. Modify your new file and commit the changes (check the status and differences as you go)

<details><summary>Solution</summary>

```bash
(new-feature %) $ echo "World" >> new-file.txt

(new-feature *) $ git status
On branch new-feature
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   new-file.txt

no changes added to commit (use "git add" and/or "git commit -a")

(new-feature %) $ git diff
diff --git a/new-file.txt b/new-file.txt
index e965047..f9264f7 100644
--- a/new-file.txt
+++ b/new-file.txt
@@ -1 +1,2 @@
 Hello
+World

(new-feature %) $ git add new-file.txt

(new-feature +) $ git commit -m 'complete new file'
[new-feature ced9a8a] complete new file
 1 file changed, 1 insertion(+)

(new-feature) $ 
```

</details>

---

## Navigation

- [**Tutorial Index**](./README.md#tutorial-outline)
- Previous --> [Exercise 1](./ex1-clone-and-setup.md)
- Next --> [Exercise 3](./ex3-merge-and-rebase.md)

---
