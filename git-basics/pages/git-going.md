# Git Going

Here we're going to get a local copy of a git repository to work with, set up our username and
email, and go over some basic commands. We'll be using a terminal and creating a couple of
directories.

## Creating a new empty repository

```terminal
~/Desktop/Tutorial $ mkdir new-git-repo

~/Desktop/Tutorial $ cd new-git-repo

~/Desktop/Tutorial/new-git-repo $ git init
Initialized empty Git repository in ~/Desktop/Tutorial/new-git-repo/.git/

~/Desktop/Tutorial/new-git-repo (main #) $ git config user.name "Gandalf"

~/Desktop/Tutorial/new-git-repo (main #) $ git config user.email gtg@middleearth.com
```

1. `mkdir new-git-repo`
2. `cd new-git-repo`
3. `git init`
4. `git config user.name "USER NAME"`
5. `git config user.email "user@usgs.gov"`

`ls -a` shows a `.git` directory, which contains a number of files and folders. The `.git/config`
file contains local configuration settings, now including the user name and email.

## Clone an existing remote repository

1. Change out of the new repository directory (`cd ..`)
2. Get the remote repository URL

![GitLab clone](../img/gitlab-clone-repo.png)
![GitHub clone](../img/github-clone-repo.png)

3. `git clone https://code.usgs.gov/cdi/cdi-software/tutorials-2025.git`
4. Set user name an email globally
   1. `git config --global ...`

## .gitignore

In the tutorials-2025 directory, `.gitignore` may not be visible in File Explorer (Windows) or
Finder (Mac). In the terminal, use `ls -a` to list "dot-files" like `.gitignore`.

1. List files that are currently ignored: `git status --ignored`
   1. `.DS_Store` is a MacOS system file

## Git remotes - For future reference

Still in the tutorials-2025 directory

1. `git remote -v`
    1. managing remotes <- TODO: should we have them rename origin to upstream? (this sets up tracking to upstream...)
    2. `git remote rename origin upstream`

## Try it out

Exercise 1: [git init, clone, and config](./ex1-clone-and-setup.md)

------

## Navigation

- [**Tutorial Index**](../README.md#tutorial-outline)
- Previous --> [Git reference commands](./pages/git-help-and-config.md)
- [Exercise 1 - init, clone, and config](./ex1-clone-and-setup.md)
- Next --> [Branches, commits, and history](./branching-commits-history.md)

------
