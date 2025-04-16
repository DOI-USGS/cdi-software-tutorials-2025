# Installing Git on Mac/Linux

See [USGS Git and Software Release Course Setup](https://code.usgs.gov/cdi/usgs-git-and-software-release-course/-/blob/main/learners/setup.md) for more information.

## Mac

Bash is available on all recent versions of Mac OS X, though Zsh may be the default shell. To make
sure you are using Bash, open a terminal (`/Applications/Utilities/Terminal.app`) or an IDE with an
integrated terminal (e.g. VSCode), and type `echo $SHELL` and hit `Return`. If the result does not
end with `/bash`, you can change your shell to Bash by typing `bash` and then `Return`. Running
`echo $0` will confirm that your current shell is Bash.

Git is usually available by default on MacOS. To confirm this, in the terminal, run `git --version`.
This will print the version of git on your system or report an error if git is an unknown command.
If Git is not installed, work with your local IT to determine the best path for your system (e.g.
[git-scm](https://git-scm.com/download/mac "This is a non-Federal link")).

## Linux

There is usually no need to install anything as the default shell on Linux is usually Bash and Git
installed by default.

------

## Navigation

* [**Tutorial Index**](../README.md#tutorial-outline)
* Next --> [What is Git?](./what-is-git.md)

------
