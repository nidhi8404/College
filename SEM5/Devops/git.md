# Git Cheat Sheet

This is a handy cheat sheet for common Git commands and procedures. Use this guide to help you with version control, branching, collaboration, and more.

## Initializing a Git Repository

- `git init`: Initializes a new Git repository in the current directory.

## Cloning a Repository

- `git clone <repository_url>`: Creates a copy of a remote repository on your local machine.

## Configuring Git

- `git config --global user.name "Your Name"`: Set your name.
- `git config --global user.email "youremail@example.com"`: Set your email.
- `git config --global core.editor "editor"`: Set your preferred text editor.

## Managing Changes

### Adding and Committing Changes

- `git add <file>`: Stage changes for commit.
- `git commit -m "Commit message"`: Commit staged changes with a message.

### Viewing Changes

- `git status`: Show the status of your working directory.
- `git diff`: Display changes between your working directory and the last commit.

## Branching and Merging

### Creating and Switching Branches

- `git branch`: List all branches in the repository.
- `git branch <branch_name>`: Create a new branch.
- `git checkout <branch_name>`: Switch to a different branch.

### Merging Changes

- `git merge <branch_name>`: Merge changes from one branch into the current branch.
- `git pull origin <branch_name>`: Fetch changes from a remote repository and merge into the current branch.

### Resolving Conflicts

During a merge, if conflicts occur, edit the conflicting files, then add and commit the changes.

## Collaborating with Remotes

### Adding and Managing Remotes

- `git remote -v`: List remote repositories.
- `git remote add <name> <repository_url>`: Add a remote repository.
- `git remote remove <name>`: Remove a remote repository.

### Fetching and Pushing Changes

- `git fetch <remote>`: Download changes from a remote repository.
- `git push <remote> <branch>`: Upload local commits to a remote repository.

## Viewing History

### Viewing Commit History

- `git log`: View the commit history.
- `git log --oneline`: Display a concise commit history.

### Showing Commit Details

- `git show <commit_id>`: Display detailed information about a specific commit.

## Tagging and Versioning

### Creating and Managing Tags

- `git tag`: List all tags in the repository.
- `git tag -a <tag_name> -m "Tag message"`: Create an annotated tag.

## Undoing Changes

### Reverting Changes

- `git reset <file>`: Unstage changes from the staging area.
- `git checkout <file>`: Discard local changes in a file.

### Reverting Commits

- `git revert <commit_id>`: Create a new commit that undoes the changes from a specific commit.


echo "# lab" >> README.md

git init
  
git add README.md

git commit -m "first commit"

git branch -M main

git remote add origin https://github.com/nidhi8404/lab.git

git push -u origin main

