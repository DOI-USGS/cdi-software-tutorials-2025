# CI/CD Tutorial Prerequisites

- [CI/CD Tutorial Prerequisites](#cicd-tutorial-prerequisites)
- [Cloning the repository](#cloning-the-repository)
- [Python and uv](#python-and-uv)
  - [Conda](#conda)
    - [Installing conda - Windows](#installing-conda---windows)
    - [Installing conda - Windows Wsl, macOS, Windows WSL](#installing-conda---windows-wsl-macos-windows-wsl)
    - [Installing Python and uv into a conda environment](#installing-python-and-uv-into-a-conda-environment)
  - [Pyenv](#pyenv)
    - [Installing Pyenv - Windows](#installing-pyenv---windows)
    - [Installing Pyenv - Windows Wsl, macOS, Windows WSL](#installing-pyenv---windows-wsl-macos-windows-wsl)
    - [Installing Python and uv into a Pyenv environment](#installing-python-and-uv-into-a-pyenv-environment)
- [Background Information](#background-information)


The CI/CD presentation will focus on setting up a project to practice CI/CD locally and prepare for utilizing CI/CD in on Git Platforms. For this tutorial, the instructor has chosen to demonstrate CI/CD practices on a Python project with examples of utilizing GitLab pipeline. As a result participants should:
1. Clone this repository
2. Install **Python** >=3.10,<3.15
3. Install the package manager, [**uv**][0], prior to the tutorial.


# Cloning the repository

`git clone https://code.usgs.gov/cdi/cdi-software/tutorials-2025.git`

# Python and uv

While Python and pip is likely installed at the system level, it is not recommended to install this tutorial's dependencies into your system level. Instead, it is recommended that you use a virtual environment to manage your Python version(s) for this tutorial. Some popular Python virtual environment managers are conda and Pyenv.

## Conda
Users can use Anaconda, Miniconda, or Miniforge to install Conda. Miniforge may be easier to get setup, as it guarantees compliance with conda's [terms of service][1] by not using conda's `defaults` channel for installation, which requires a business account. 

### Installing conda - Windows 

IT and/or administrative privileges will be required to execute the [Windows Miniforge installer to install conda][2].

### Installing conda - Windows Wsl, macOS, Windows WSL

All unix-like operating systems can use the command line commands outlined in the [Miniforge documentation][3] to install Miniforge/conda.


### Installing Python and uv into a conda environment

1. Create an environment for the tutorial: `conda env create -n cicd`
2. Activate the environment: `conda activate cicd`
3. Install Python and uv: `conda install -y python=3.12 uv`

## Pyenv 

### Installing Pyenv - Windows 

[Pyenv does not support the Windows platform][4] (outside of WSL).

### Installing Pyenv - Windows Wsl, macOS, Windows WSL

All unix-like operating systems can use the command line commands outlined in the [Pyenv documentation][5] to install Pyenv


### Installing Python and uv into a Pyenv environment

1. Install a version of Pyenv: `pyenv install 3.12.13`
2. Set the python version to use globally **or** within the local repository for this tutorial
   1. Setting the version globally: `pyenv global 3.12.13`
   2. Setting the version locally: `cd <path to tutorials-2025> && pyenv local 3.12.13`
3. Install uv: `pip install uv`

# Background Information
While it is not required that you follow along in VSCode, the presenter will be using that IDE. You can review the [IDE Git Integration](../ide-git-integration/) for an overview of VSCode.

This will be a fast paced tutorial. Participants should also have general background knowledge of:

1. Simple [Python syntax][6]
2. Python [virtual environments][7]
3. Python package managers. Some examples include [conda][8], [Poetry][9], [uv][10]
   > this tutorial will use **uv**
4. Git concepts covered in the [Git Basics tutorial](../git-basics/)


[0]: https://docs.astral.sh/uv/ "This is a non-Federal link"
[1]: https://www.anaconda.com/legal/terms/terms-of-service "This is a non-Federal link"
[2]: https://github.com/conda-forge/miniforge#windows "This is a non-Federal link"
[3]: https://github.com/conda-forge/miniforge#unix-like-platforms-macos-linux--wsl "This is a non-Federal link"
[4]: https://github.com/pyenv/pyenv#windows "This is a non-Federal link"
[5]: https://github.com/pyenv/pyenv#linuxunix "This is a non-Federal link"
[6]: https://docs.python.org/3/tutorial/introduction.html "This is a non-Federal link"
[7]: https://realpython.com/python-virtual-environments-a-primer/#what-is-a-python-virtual-environment "This is a non-Federal link"
[8]: https://realpython.com/python-virtual-environments-a-primer#what-is-a-python-virtual-environment "This is a non-Federal link"
[9]: https://python-poetry.org/docs/basic-usage/ "This is a non-Federal link"
[10]: https://docs.astral.sh/uv/ "This is a non-Federal link"