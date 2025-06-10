# Pulling it together - merging and rebasing

We've seen how to use *branches* to organize work and keep development separate from stable code.
Changes on a branch can then be *merged* back into the `main` branch. Particularly if you're
working alone, this is usually a fairly simple process. Complications can arise once you start
collaborating and want to incorporate changes that someone else implemented on another branch or
merged into the `main` branch since you began working on your branch.

## Merge

A Git *merge* combines changes from one branch into another, creating a commit with two parents. In
the diagram below, the merge commit is commit `6` (tagged `1.1.0`). It has two parents, commits `4`
and `5`.

```mermaid <!-- the lines below build a diagram and are not real Git commands -->
%%{init: { 'logLevel': 'debug', 'theme': 'base', 'gitGraph': {'showBranches': true, 'showCommitLabel':true,'mainBranchOrder': 2}} }%%
gitGraph
    commit id:"0"
    commit id:"1" tag:"1.0.0"

    branch new-feature order:2
    commit id:"2"
    commit id:"3"

    checkout main
    commit id:"4"

    checkout new-feature
    commit id:"5"
    
    checkout main
    merge new-feature id:"6" tag:"1.1.0"
```

In the example above, let's say merge `4`, on `main`, is from a collaborator and is unrelated to
your work on `new-feature` (or a different chapter of a report). It may not be necessary for you to
incorporate commit `4` into your branch because it is unrelated.

On the other hand, maybe commit `4` includes a new parameter used by your new feature and in other
parts of the code, so you do need to incorporate it into your branch. There's nothing wrong with
doing this using `git merge`, but it can lead to "messy" or "cluttered" git histories. Git *rebase*
can clean this up (with a cost...).

```mermaid <!-- the lines below build a diagram and are not real Git commands -->
%%{init: { 'logLevel': 'debug', 'theme': 'base', 'gitGraph': {'showBranches': true, 'showCommitLabel':true,'mainBranchOrder': 2}} }%%
gitGraph
    commit id:"0"
    commit id:"1" tag:"1.0.0"

    branch new-feature order:2
    commit id:"2"
    commit id:"3"

    checkout main
    commit id:"4"

    checkout new-feature
    merge main id:"4.5"
    commit id:"5"
    
    checkout main
    merge new-feature id:"6" tag:"1.1.0"
```

### Fast-forward

A "fast-forward" merge is a merge operation that does not require a new commit. This can happen
when the history on the current branch is a direct ancestor of the branch being *merged* or
*pulled.* Fast-forward can merges result in a cleaner project history without merge commits. On the
other hand, merge commits can make it easier to identify, and possibly revert, individual features
in the Git history.

Git commands `merge` and `pull` have the option `--ff-only` to ensure that a branch update will
only be performed if it can be done through a fast-forward merge. Using the `--ff-only` flag will
cause a merge to abort if it does not satisfy the requirements of a fast-forward merge.

> [!NOTE]
> Git *pull* is a combination of two other commands: `git fetch` followed by `git merge`
>
> - `git fetch` downloads new commits, branches, and tags from a remote repository to your local
>   repository without modifying your local branches
> - `git merge` integrates changes from one branch into another
> - `git pull` *fetches* changes from the remote repository and *merges* those changes into your
>   current local branch

#### Why and when to use fast-forward

In a *forking* workflow, your local *main* branch should always be the same as the remote *main*
branch (upstream or origin) so that it can act as your local *source of truth*. Using `--ff-only`
to *pull* to main (e.g. `git pull --ff-only upstream main`) means the operation will fail if your
local main has diverged from the remote main. This can happen if you accidentally add a commit to
your local main branch instead of a working branch. This can be fixed by reverting your main branch
or deleting it and re-fetching it. If you want to keep the misplaced commits, use `git log` to get
the commit IDs so that you can apply these to a working branch (`git cherry-pick ...`).

## Rebase

Rebasing applies the incremental changes on one branch to another as a series of new commits. This
creates a "cleaner" history, but does change the history as the original commits are recreated as
if they occurred after commit `4` (commits `2'` and `3'`). This can cause problems if, for example,
a collaborator branched off of your work at one of those original commits.

```mermaid <!-- the lines below build a diagram and are not real Git commands -->
%%{init: { 'logLevel': 'debug', 'theme': 'base', 'gitGraph': {'showBranches': true, 'showCommitLabel':true,'mainBranchOrder': 2}} }%%
gitGraph
    commit id:"0"
    commit id:"1" tag:"1.0.0"

    branch orig-new-feature order:2
    commit id:"2" type: REVERSE
    commit id:"3" type: REVERSE

    checkout main
    commit id:"4"

    branch new-feature order:3
    commit id:"2'"
    commit id:"3'"
    commit id:"5"
    
    checkout main
    merge new-feature id:"6" tag:"1.1.0"
```

## Keep in mind

There is usually more than one way to do things in Git, and there may only be subtle differences in
the outcome, if any.

## Try it out

Exercise 3: [merge and rebase](./ex3-merge-and-rebase.md)

---

## Navigation

- [**Tutorial Index**](./README.md#tutorial-outline)
- Previous --> [Branches, commits, and history](./branching-commits-history.md)
- [Exercise 3 - merge and rebase](./ex3-merge-and-rebase.md)
- Next --> [And more!](./further-topics.md)

---
