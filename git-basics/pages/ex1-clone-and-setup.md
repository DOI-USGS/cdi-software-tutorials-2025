# Exercise 1: Clone repository and set up user

## Exercise 1 Goals

- Create a local repository for use with the rest of the tutorial from scratch and by cloning an
  existing repository
- Git configuration
  - set username and email
- Ignoring files
  - .gitignore
- Show git remotes

## The exercise

1. Open a terminal, an editor, and file explorer / Finder
   1. This could be Terminal on MacOS or GitBash on Windows
2. Change into the folder where you'd like to create a repository
   1. `cd ~/Desktop/Tutorial`

### Initialize a new repository

1. `mkdir new-git-repo`
2. `cd new-git-repo`
3. `git init`
4. `git config user.name "USER NAME"`
5. `git config user.email "user@usgs.gov"`

### Clone an existing remote repository

1. Change out of the new repository directory (`cd ..`)
2. Get the remote repository URL

![GitLab clone](../img/gitlab-clone-repo.png)
![GitHub clone](../img/github-clone-repo.png)

3. `git clone https://code.usgs.gov/cdi/cdi-software/tutorials-2025.git`
4. Set user name an email globally
   1. `git config --global ...`

### .gitignore

In the tutorials-2025 directory, `.gitignore` may not be visible in File Explorer (Windows) or
Finder (Mac). In the terminal, use `ls -a` to list "dot-files" like `.gitignore`.

1. List files that are currently ignored: `git status --ignored`
   1. `.DS_Store` is a MacOS system file

### Git remotes - For future reference

Still in the tutorials-2025 directory

1. `git remote -v`
    1. managing remotes <- TODO: should we have them rename origin to upstream? (this sets up tracking to upstream...)
    2. `git remote rename origin upstream`

------

## Navigation

- [**Tutorial Index**](../README.md#tutorial-outline)
- Previous --> [Git reference commands](./pages/git-help-and-config.md)
- Next --> [Exercise 2](./ex2-local-branch-and-commit.md)

------
