# Exercise 2: create a branch

Background information: [Git branches, commits, and history](branching-commits-history.md)

## Exercise 2 Goals

- Build on [Exercise 1](ex1-clone-and-setup.md)
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

Step 1. Create a new branch, list branches, and switch to the new branch.

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

</details><br>

Step 2. In one command, create and switch to a new branch

<details><summary>Solution</summary>

```bash
(new-feature) $ git switch -c another-new-feature
Switched to a new branch 'another-new-feature'

(another-new-feature) $ 
```

</details><br>

Step 3. Switch back to your first new branch, list *all* existing branches, and delete the second new
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

Step 1. Create a new file and add it to staging. Check the status of your working directory as you go

Hint: create a new empty file with `touch FILENAME` or redirect the output of `echo` to a file,
e.g. `echo "hello" > FILENAME` (`>` overwrites an existing file or creates a new one, `>>` appends
to the end of an existing file or creates a new one).

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

</details><br>

Step 2. Commit your new file (with a commit message) and check the log

<details><summary>Solution</summary>

```bash
(new-feature %) $ git commit -m 'add new file'
[new-feature f66c014] adding new file
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 new-file.txt

git-basics (new-feature>) $ # Show the last N log entries for brevity with -N

git-basics (new-feature>) $ git log -2
commit c99f5b92ab193a08431d7a55fe4de9c40e8a2104 (HEAD -> new-feature)
Author: Frodo <fr@middleearth.fic>
Date:   Wed Jun 11 08:53:54 2025 -0600

    hello world

commit db2492a501a0e4dedbe808a1bc592b556e6695fe
Author: Frodo <fr@middleearth.fic>
Date:   Wed Jun 11 08:50:15 2025 -0600

    new file
```

</details><br>

Step 1. Modify your new file and commit the changes (check the status and differences as you go)

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

## Tutorial Pages

0. [Tutorial Index](README.md#tutorial-outline)
1. [What is Git (and why should I use it)?](what-is-git.md)
2. [Git reference commands](git-help-and-config.md)
3. [Initialization or cloning and basic settings](git-going.md) (and *[Exercise 1](ex1-clone-and-setup.md)*)
4. [Branches, commits, and history](branching-commits-history.md) (and *Exercise 2*)
5. [Pulling it together - merging and rebasing](merging-and-rebasing.md) (and *[Exercise 3](ex3-merge-and-rebase.md)*)
6. [And more!](further-topics.md)

---
