# Glossary

This should provide quick access to key terms used in the tutorials.

# Contents
- [Glossary](#glossary)
- [Contents](#contents)
  - [Git Basiscs Terms](#git-basiscs-terms)
    - [git](#git)
    - [commit](#commit)
    - [history](#history)
    - [repository](#repository)
    - [objects](#objects)
    - [GitLab](#gitlab)
    - [GitHub](#github)
    - [diff](#diff)
    - [tree](#tree)
    - [index](#index)
    - [SHA-1 hash](#sha-1-hash)
    - [branch](#branch)
    - [tag](#tag)
    - [staging area](#staging-area)
    - [state](#state)
    - [checkout](#checkout)
    - [local repository](#local-repository)
    - [remote repository](#remote-repository)
    - [remote](#remote)
    - [push](#push)
    - [pull](#pull)
    - [fork](#fork)
    - [upstream](#upstream)
    - [origin](#origin)
    - [merge](#merge)
    - [config](#config)
    - [init](#init)
    - [clone](#clone)
    - [status](#status)
    - [gitignore](#gitignore)
    - [switch](#switch)
    - [log](#log)
    - [fetch](#fetch)
    - [fast-forward](#fast-forward)
    - [conflict](#conflict)
    - [rebase](#rebase)
    - [cherry-pick](#cherry-pick)
    - [reset](#reset)
    - [stash](#stash)
    - [\[blame\]](#blame)
- [References](#references)


## Git Basiscs Terms
This list of terms is organized in the order that they will first be mentioned in the Git Basics Tutorial

### [git][1]
A version/revision control system that tracks changes on/in files and directories

### [commit][2]
A record of changes identified by a hash

### [history][3]
A series of commits in chronological order

### [repository][4]
A database of [objects](#objects). Generally a directory with a `.git` directory, or when hosted on a web, a url ending with `.git`

### [objects][18]
Key/pair values that represents data in the repository. Objects are stored in `.git/objects`.

### [GitLab][5]
A platform where repositories can be hosted. The primary git platform used by the USGS

### [GitHub][6]
A platform where repositories can be hosted. The primary git platform used by the DOI.

### [diff][7]
A visual representation of the changes between what you are currently working on ([tree](#tree)) and what is already in the history (or index)

### [tree][8]
A list of filenames and reference to their data

### [index][9]
A collection of files and their status. Used to determine changes when merging. Often called the [staging area](#staging-area)

### [SHA-1][10] [hash][11]
Hash used to identify files, commits, and all other objects in a git repository.

### [branch][12]
A workspace parallel to your default workspace (often called the `main` branch), where you can make and track changes


### [tag][13]
A reference to a specific point in the history of code changes (commit), with a user defined name (often a version number)

### [staging area][14]
Where commits can be reviewed prior to being committed

### [state][15]
Statuses that files can have. The three main states are modified, staged, and committed
- "modified": changes were made but they have not been committed to your repository yet
- "staged": you have marked the modifications to be added upon the next commit
- "committed": the data has been added to your repository and is now in the history
- "untracked": files that have not been added to your repository (via a commit)

### [checkout][16]
A command used to switch between branches or restore a modified file (undo all changes on file)

### local repository
A repository on a local machine (laptop, desktop, vm) that is a directory with a `.git` folder. This may be pointing to a [remote](#remote) repository hosted on a git platform (GitLab/GitHub)

### remote repository
A repository hosted on a git platform (GitLab/GitHub)

### [remote][17]
Reference to the url of remote repository where you can [push](#push) to and [pull](#pull) from

### [push][19]
Update a remote repository with objects from the local repository

### [pull][20]
A command that joins two branch histories (usually without a commit message). Generally a user will use pull to get commits from a remote repository or local branch into the current branch

### [fork][21]
A copy of a repository on a git platform that is also hosted on the same git platform, generally under a personal user space

### [upstream][22]
A name that refers to a stable or shared repository (or branch) that an individual can fork from

### [origin][23]
A name that refers to the default upstream branch. By default, when [cloning](#clone) a repository, this is set as that remote repository. In general, this is a fork of an upstream repository.

### [merge][24]
Joining two branch histories with a commit

### [config][25]
A file containing all default and custom configuration. At a minimum, it holds the information about who is making commits

### [init][26]
A commend to setup an empty repository. It can also be run to get new templates for newer versions of git or move an existing repository

### [clone][27]
Copy a repository into a directory

### [status][28]
Display the working tree; display each changed, new, or deleted file and its state

### [gitignore][29]
A list of file that should always be in an untracked state. Generally custom ignore specifications are added in a `.gitignore` file at the top level of the repository

### [switch][30]
A command to switch to a specified branch

### [log][31]
Display of history of commits

### [fetch][32]
Download objects from another repository

### [fast-forward][33]
A merge that moves the pointer of the target branch forward to the latest commit of the source branch (the branch merging into the target branch). This cannot be done when the history of the target and the source branch have diverged or when there are [conflicts](#conflict)

### [conflict][34]
When two lines of code, files, etc. have been changed by both the source and target branch of a merge or rebase

### [rebase][35]
A way to combine changes from two branches

### [cherry-pick][36]
Apply the changes of specific commits

### [reset][37]
Undo changes to a previous state

### [stash][38]
Undo all current changes, but add them to a list that can be used to apply the changes to a branch later

### [blame]
Show the author of each revision by line

# References
- [Full Git Glossary](https://git-scm.com/docs/gitglossary)

[1]: https://git-scm.com/book/en/v2/Getting-Started-What-is-Git%3F
[2]: https://git-scm.com/docs/git-commit
[3]: https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History
[4]: https://git-scm.com/docs/gitglossary#Documentation/gitglossary.txt-aiddefbarerepositoryabarerepository
[5]: https://about.gitlab.com/resources/?topic=All+topics
[6]: https://docs.github.com/en
[7]: https://git-scm.com/docs/git-diff
[8]: https://git-scm.com/docs/gitglossary#Documentation/gitglossary.txt-aiddeftreeobjectatreeobject
[9]: https://git-scm.com/docs/gitglossary#Documentation/gitglossary.txt-aiddefindexaindex
[10]: https://git-scm.com/docs/gitglossary#def_SHA1
[11]: https://git-scm.com/docs/gitglossary#Documentation/gitglossary.txt-aiddefhashahash
[12]: https://www.w3schools.com/git/git_branch.asp
[13]: https://git-scm.com/book/en/v2/Git-Basics-Tagging
[14]: https://git-scm.com/about/staging-area
[15]: https://git-scm.com/book/en/v2/Getting-Started-What-is-Git%3F#:~:text=The%20Three%20States&text=Git%20has%20three%20main%20states,into%20your%20next%20commit%20snapshot.
[16]: https://git-scm.com/docs/git-checkout
[17]: https://git-scm.com/book/ms/v2/Git-Basics-Working-with-Remotes
[18]: https://git-scm.com/book/en/v2/Git-Internals-Git-Objects
[19]: https://git-scm.com/docs/git-push
[20]: https://git-scm.com/docs/git-pull
[21]: https://www.geeksforgeeks.org/git-fork/
[22]: https://git-scm.com/docs/gitglossary#Documentation/gitglossary.txt-aiddefupstreambranchaupstreambranch
[23]: https://git-scm.com/docs/gitglossary#Documentation/gitglossary.txt-aiddeforiginaorigin
[24]: https://git-scm.com/docs/git-merge
[25]: https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration
[26]: https://git-scm.com/docs/git-init
[27]: https://git-scm.com/docs/git-clone
[28]: https://git-scm.com/docs/git-status
[29]: https://git-scm.com/docs/gitignore
[30]: https://git-scm.com/docs/git-switch
[31]: https://git-scm.com/docs/git-log
[32]: https://git-scm.com/docs/git-fetch
[33]: https://www.geeksforgeeks.org/what-is-git-fast-forwarding/
[34]: https://www.atlassian.com/git/tutorials/using-branches/merge-conflicts
[35]: https://git-scm.com/book/en/v2/Git-Branching-Rebasing
[36]: https://git-scm.com/docs/git-cherry-pick
[37]: https://git-scm.com/docs/git-reset
[38]: https://git-scm.com/docs/git-stash
[39]: https://git-scm.com/docs/git-blame