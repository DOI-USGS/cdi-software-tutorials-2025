# Git Basics Tutorial Prerequisites

TODO: customize for git-basics tutorial, i.e. GitBash?
TODO: add link to vscode info in other tutorial

## Installation

### Windows

See [USGS Git and Software Release Course Setup](https://code.usgs.gov/cdi/usgs-git-and-software-release-course/-/blob/main/learners/setup.md).

For a video tutorial, see [Git Bash Installation Tutorial](https://youtu.be/339AEqk9c-8 "This is a non-Federal link").

### Mac

Bash is available on all recent versions of Mac OS X, though Zsh may be the default shell. To make
sure you are using Bash, open a terminal (`/Applications/Utilities/Terminal.app`) or an IDE with an
integrated terminal (e.g. VSCode), and type `echo $SHELL` and hit `Return`. If the result does not
end with `/bash`, you can change your shell to Bash by typing `bash` and then `Return`. Running
`echo $0` will confirm that your current shell is Bash.

Git is usually available by default on MacOS. To confirm this, in the terminal, run `git --version`.
This will print the version of git on your system or report an error if git is an unknown command.
If Git is not installed, work with your local IT to determine the best path for your system (e.g.
[git-scm](https://git-scm.com/download/mac "This is a non-Federal link")).

### Linux

There is usually no need to install anything as the default shell on Linux is usually Bash and Git
installed by default.

## Potential Issues

TODO: Note - this may be a more advanced topic that we don't need to get into for this tutorial

Line endings differ between Windows and Mac or Linux systems and this can cause merge issues.
GitHub has a page documenting how to handle line endings on different systems and, if necessary,
how to normalize line endings in an existing repository:
[Configuring Git to handle line endings](https://docs.github.com/en/get-started/git-basics/configuring-git-to-handle-line-endings).

------

## Navigation

* [**Tutorial Index**](../README.md#tutorial-outline)
* Next --> [What is Git?](./what-is-git.md)

------
