# Git Going

Here we're going to create a local copy of a Git repository to work with, set up our username and
email, and go over some basic commands. We'll be using a terminal and creating a couple of
directories. The examples below will be created in a folder called `Tutorial` on your desktop.

Throughout the tutorial demonstrations, you'll see a git-aware prompt (e.g. `(main #)`) and may see
Git command completion. Setting this up is beyond the scope of the tutorial, but see
[Git prompt and command completion](further-topics.md#git-command-completion-and-prompt) for more
information.

## Creating a new empty repository

The command to initialize a new empty repository is `git init`, which basically creates a `.git`
folder in the current directory that contains a number of Git-specific subdirectories. This can be
used in an empty folder or a folder containing files and subfolders that will be added to the
repository.

*<details><summary>`git init`</summary>*

First we have to create the directory that will be the new repository and change into this new
directory:

```bash
~/Desktop/Tutorial $ mkdir new-git-repo

~/Desktop/Tutorial $ cd new-git-repo
```

Now we can initialize a new repository. Note that the new `.git` folder is not shown by default,
at least on MacOS in Finder or with the `ls` command since it is a "dot-file".

```bash
~/Desktop/Tutorial/new-git-repo $ git init
Initialized empty Git repository in ~/Desktop/Tutorial/new-git-repo/.git/

~/Desktop/Tutorial/new-git-repo (main #) $ ls .git
HEAD        config      description hooks       info        objects     refs
```

</details>

### Another way...

Another (perhaps more common way?) to create an empty Git repository is to create a new project
on GitHub or GitLab, either from an available template or empty, and then clone this locally. You
may want allow GitHub or GitLab to create a basic README rather than a completely empty repository.
Existing files and folders can then be added to the local clone and pushed up to the server.

## Clone an existing remote repository

If you have an existing, possibly empty, repository on a platform like GitHub or GitLab, we can
create a local copy, or *clone*, of the remote repository with the `git clone` command. This will
create a new folder containing the repository in the working directory.

Copy the URL from your repository on GitHub or GitLab as shown below.

<img src="./img/github-clone-repo.png" alt="GitHub clone with HTTPS" width="800" />

<img src="./img/gitlab-clone-repo.png" alt="GitLab clone with HTTPS" width="800" />

The command to clone the remote repository will look something like this:

```bash
~/Desktop/Tutorial $ git clone https://github.com/path/to/shire-repo.git
Cloning into 'shire-repo'...
remote: Enumerating objects: 233, done.
remote: Counting objects: 100% (230/230), done.
remote: Compressing objects: 100% (139/139), done.
remote: Total 233 (delta 116), reused 192 (delta 88), pack-reused 3 (from 1)
Receiving objects: 100% (233/233), 1.09 MiB | 4.76 MiB/s, done.
Resolving deltas: 100% (116/116), done.

~/Desktop/Tutorial $ ls
shire-repo
```

> [!NOTE]
> If you clone a new repository without any content, you'll get a warning about this rather than
> messages about downloading existing files.

## Configure username and email

As noted in [Git Help and Config](git-help-and-config.md#git-configuration), check for an
existing global Git configuration with `git config --list --global`. If this output includes your
`user.name` and `user.email`, you're all set. Otherwise, set these with

- `git config --global user.name "Gandalf"`
- `git config --global user.email "gtg@middleearth.fic"`

## Git status

`git status` may be the most frequently used Git command. It lists the currently checked out branch
and the status of any staged, modified, or untracked files in your working directory.

## Git can ignore files - .gitignore

There may be files that you want Git to ignore. For example, you may not want to include certain
file types (compiled code, temporary files) or entire directories in your repository. This is
accomplished with a `.gitignore` file, which can be local (within a repository) or global (e.g.
`~/.gitignore-global`). Each line in the `.gitignore` file is a pattern (wildcards allowed) to
match files or entire folders that should be ignored. Git will not ignore files that are already in
your repository. See [Git ignore documentation][git-ignore-docs] for more information about
`.gitignore`, *patterns*, and *wildcards*.

[git-ignore-docs]: https://git-scm.com/docs/gitignore "This is a non-Federal link"

> [!Note]
> `.gitignore` files may not be visible in File Explorer (Windows) or Finder (Mac). In the
> terminal, use `ls -a` to list "dot-files" like `.gitignore`.

To list any files that are currently ignored, run `git status --ignored` (more on `git status` in
the next lesson).

## Git remotes - For future reference

Git *remotes* are one ore more remote repositories that your local *clone* is linked to. If you've
*cloned* a remote repository, check the URLs and names for the remote with `git remote -v`

From within the `tutorials-2025` directory:

```bash
$ git remote -v
origin  https://code.usgs.gov/cdi/cdi-software/tutorials-2025.git (fetch)
origin  https://code.usgs.gov/cdi/cdi-software/tutorials-2025.git (push)
```

Of course, you can add other remotes, rename existing remotes, and customize the *fetch* and *pull*
URLs (e.g. if you want a remote to be *read only*, you can set an invalid URL for *push*).

## Try it out

Exercise 1: [Git init, clone, and config](ex1-clone-and-setup.md)

---

## Tutorial Pages

0. [Tutorial Index](README.md#tutorial-outline)
1. [What is Git (and why should I use it)?](what-is-git.md)
2. [Git reference commands](git-help-and-config.md)
3. Initialization or cloning and basic settings (and *[Exercise 1](ex1-clone-and-setup.md)*)
4. [Branches, commits, and history](branching-commits-history.md) (and *[Exercise 2](ex2-local-branch-and-commit.md)*)
5. [Pulling it together - merging and rebasing](merging-and-rebasing.md) (and *[Exercise 3](ex3-merge-and-rebase.md)*)
6. [And more!](further-topics.md)

---
