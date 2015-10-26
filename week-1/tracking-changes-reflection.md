How does tracking and adding changes make developers' lives easier?

Tracking and adding changes makes our lives easier because it helps condense all of our changes.  It allows not have to track each change indvidually.  Once we add everything, we can commit everything at once instead of indvidually.  Also, just helps us keep a log of all whats been done.

What is a commit?

Commit is essentially saving our file for when are made changes are made.  We can recall to any commit, whether it be the previous commit or a commit that happened a year ago.  I should commit as often as possible.


What are the best practices for commit messages?

Best practices for a commit message are the use of imperative verbs instead of present tense verbs.  The message should be like instructions for what applying the commit will do.  Another guideline should be to keep the message short (about less than 50 characters) and the first letter of the first word should be capitalized.


What does the HEAD^ argument mean?

HEAD^ refers to the latest commit.  HEAD is the commit you are on, HEAD~3 is the 3rd commit from HEAD, and HEAD~4 is the 4th commit from HEAD.  If I would want make a change from the latest commit, I would use git reset --soft HEAD^.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The first stage is the working stage. This could be the file I'm working in making any updates to it.  Then the next stage would be the staging area. To get there I would do the 'git add' for the files that I would like to be changed.  Then the last stage is the commit stage.  To get there I would do a 'git commit -m', which will commit all the files in the staging area.


Write a handy cheatsheet of the commands you need to commit your changes?

'git add' - this will add the files to the staging area that you would like to be changed.

'git status' - this will show me tracked and untracked files that I have been modified.  Will also show you which files are in the staging area and ready to be commited.

'git commit -m' - this will commit the files that you want to be changed.

What is a pull request and how do you create and merge one?

On GitHub, a pull request let's other people know about changes that have been to pushed to a repo.

First, before the pull request, it must be pushed from git to the repo.  Then on GitHub, go to the branch that needs to be pulled.  Then click on the 'pull request' icon.  You should be able to select the branch that you want to compare then click on 'Create pull request'.  Then on the following screen click on 'Merge pull request.'

Good practice would to also delete the branch on Github and Git once succesfully merged.


Why are pull requests preferred when working with teams?

Pull requests are preferred because it allows others on the team to review the file first.  Other team memebers can comment on it and disuss what was done on it with me before merging it the main file.  It's just extra protection before changing the file in the master branch.