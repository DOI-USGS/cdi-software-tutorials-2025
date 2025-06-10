# Exercise 1: Clone repository and set up user

Background information: [Git Going](git-going.md)

## Exercise 1 Goals

- Create a local repository for use with the rest of the tutorial from scratch and by cloning an
  existing repository
- Git configuration
  - set username and email, if these have not already been configured
- Ignoring files
  - .gitignore
- Show Git remotes

## Preparation

1. Open a terminal, an editor, and File Explorer / Finder
   1. This could be Terminal on MacOS or GitBash on Windows
   2. An editor, like VSCode, can include a terminal, editor, and explorer in a single window
2. Change into the folder where you'd like to create a repository
   1. `cd ~/Desktop/Tutorial`

## Clone an existing remote repository

Clone the "tutorials-2025" repository.

<details><summary>Solution</summary>

Repository URLs:

- GitLab: https://code.usgs.gov/cdi/cdi-software/tutorials-2025.git
- GitHub: https://github.com/DOI-USGS/cdi-software-tutorials-2025.git

All examples in this tutorial use GitLab.

```bash
~/Desktop/Tutorial $ git clone https://code.usgs.gov/cdi/cdi-software/tutorials-2025.git
Cloning into 'tutorials-2025'...
remote: Enumerating objects: 233, done.
remote: Counting objects: 100% (230/230), done.
remote: Compressing objects: 100% (139/139), done.
remote: Total 233 (delta 116), reused 192 (delta 88), pack-reused 3 (from 1)
Receiving objects: 100% (233/233), 1.09 MiB | 4.76 MiB/s, done.
Resolving deltas: 100% (116/116), done.
```

</details>

## Configure Git username and email

Set your Git username and email address globally. Confirm that these have been set correctly.

<details><summary>Solution</summary>

```bash
$ git config --global user.name "Gandalf"

$ git config --global user.email "gtg@middleearth.net"

$ git config --get user.name
Gandalf

$ git config --get user.email
gtg@middleearth.net
```

</details>

## Check remote Git repositories

Check the remote repository set for your local clone.

<details><summary>Solution</summary>

```bash
$ cd tutorials-2025

$ git remote -v
origin  https://code.usgs.gov/cdi/cdi-software/tutorials-2025.git (fetch)
origin  https://code.usgs.gov/cdi/cdi-software/tutorials-2025.git (push)
```

If you cloned from GitHub, the URLs will be
<https://github.com/DOI-USGS/cdi-software-tutorials-2025.git>.

</details>

## Ignoring files

Create a new file that will be ignored (use `touch FILENAME` command to create a new empty file
with the specified name) and verify that it is ignored.

<details><summary>Solution</summary>

```bash
$ touch temp-file.txt

$ git status
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean

$ git status --ignored
On branch main
Ignored files:
  (use "git add -f <file>..." to include in what will be committed)
        temp-file.txt

nothing to commit, working tree clean
```

</details><br>

**Extra credit:** Make git ignore all `*.dat` files

<details><summary>Solution</summary>

```bash
$ echo "*.dat" >> .gitignore

$ touch file.dat

$ git status
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean

$ git status --ignored
On branch main
Ignored files:
  (use "git add -f <file>..." to include in what will be committed)
        file.dat
        temp-file.txt

nothing to commit, working tree clean
```

</details>

## Git remotes - For future reference

Check the remotes set for the current repository.

<details><summary>Solution</summary>

```bash
$ git remote -v
origin  https://code.usgs.gov/cdi/cdi-software/tutorials-2025.git (fetch)
origin  https://code.usgs.gov/cdi/cdi-software/tutorials-2025.git (push)
```

</details>

**Extra credit:** Since we commonly use a forking workflow (more on this later), we don't want to
push anything directly to the main repository. To avoid mistakes, change the *push* URL for remote
"origin" to an invalid URL. Hint: `git help ...`

<details><summary>Solution</summary>

```bash
$ git remote set-url --push origin invalid-url--READ_ONLY

$ git remote -v
origin  https://code.usgs.gov/cdi/cdi-software/tutorials-2025.git (fetch)
origin  invalid-url--READ_ONLY (push)
```

</details>

---

## Tutorial Pages

0. [Tutorial Index](README.md#tutorial-outline)
1. [What is Git (and why should I use it)?](what-is-git.md)
2. [Git reference commands](git-help-and-config.md)
3. [Initialization or cloning and basic settings](git-going.md) (and *Exercise 1*)
4. [Branches, commits, and history](branching-commits-history.md) (and *[Exercise 2](ex2-local-branch-and-commit.md)*)
5. [Pulling it together - merging and rebasing](merging-and-rebasing.md) (and *[Exercise 3](ex3-merge-and-rebase.md)*)
6. [And more!](further-topics.md)

---
