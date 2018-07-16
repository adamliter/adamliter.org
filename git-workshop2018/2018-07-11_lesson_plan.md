---
title: "[git-workshop2018] Meeting 7"
layout: default
date: 2018-07-11
nav_node: git-workshop2018
---

# `git-workshop2018` meeting 7 lesson plan

**⚠️ NOTE**: GitLab recently changed the way that they render Markdown,
and this has broken the way that a number of the things in this document
should be rendered. For the time being, I've just pre-rendered an HTML
version of the document, which you should use instead. So if you're not
already viewing this document at
[`https://adamliter.org/git-workshop2018/2018-07-11_lesson_plan`](https://adamliter.org/git-workshop2018/2018-07-11_lesson_plan)
you should go there now.

The plan for this lesson is for you to work with one other person. You
will collaborate on an experiment. You'll go through the process of
designing an experiment, collecting data, writing a manuscript, and
dealing with reviewer comments on your manuscript.

One of you will play the role of Person 1, and one of you will play the
role of Person 2. Please decide who will be which person now.

Please be sure to follow the instructions for this lesson plan to the
letter. There are certain things that Person 1 and Person 2 should do at
the same time, and this all is designed to lead you to be in certain
situations that you might find yourself in during the course of your
collaborating with git. You'll then need to figure out how to deal with
these situations. These will all be situations that you have the skills
to deal with, given what you've learned in this workshop.

Of course, some of these situations will seem a bit silly and contrived,
especially since you're sitting right next to your collaborator and
could just talk about who should do what when. But please follow the
lesson plan precisely, because it is designed to make sure that you get
practice with a variety of different situations you might find yourself
in.

If either your or collaborator get stuck at any point during these
practice exercises, hopefully you can help one another out. If you both
get stuck, I'll come around and help you, but you two should really try
to figure things out on your own first, if you can. If you need to (but
only as a last resort) refer back to
the [`lesson_plans.org`][lesson-plans] document.

## Step 1

Person 1 should create a local repository on their computer. You'll
first need to create a folder (call it `our_experiment`). Navigate to
that folder in your shell, and start a git repository inside that
folder. Explain how you're doing all of this to Person 2.

Create a file called `.gitattributes`. Make sure the name of the file
matches exactly! This is an important convention. Add the following
content to the `.gitattributes` file:

```
* text=auto
```

Commit this new file to your local version history.

Person 2 should create a git repository on GitLab *in their namespace*
(**not** the namespace of the `git-workshop2018` group) called
`our_experiment`. Give "Maintainer" level access to Person 1 by going to
"Settings" and then "Members" in the sidebar, where you can then add
Person 1 by their GitLab username. Person 1 should watch over the
shoulder of Person 2 so that you are both comfortable with how to create
repositories in GitLab and how to give other people read/write access to
those repositories.

## Step 2

Person 1 will need to add the GitLab repository that Person 2 just
created as the `origin` remote for their local repository. Make sure you
use the SSH URL (not the HTTPS URL). Explain to Person 2 what git
command you use and how you do this. Now that you've set up the `origin`
remote repository, go ahead and send your one commit to the `origin`
repository. Explain to Person 2 the git command you use and what it
does. Don't forget to set the `master` branch of the `origin` repository
as the default "upstream" branch for your local `master` branch when
sending your new commit to the remote repository for the first time, by
using an optional flag to the git command.

## Step 3

Person 2 now needs to get a copy of the remote GitLab repository on to
their local computer. Again, use the SSH URL (not the HTTPS URL).
Explain the command that you are using and what it does to Person 1.

## Step 4

At *the same time*, Person 1 and Person 2 should both create a
`.gitignore` file with the following content:

(For file patterns that you would usually want to ignore for different
operating systems, programming languages, and frameworks, see
[GitHub's collection of `.gitignore` templates][gitignore].)

```
# ----------------------------------------------------------------------
# macOS
# ----------------------------------------------------------------------
## General
*.DS_Store
.AppleDouble
.LSOverride

## Thumbnails
._*

## Files that might appear in the root of a volume
.DocumentRevisions-V100
.fseventsd
.Spotlight-V100
.TemporaryItems
.Trashes
.VolumeIcon.icns
.com.apple.timemachine.donotpresent

## Directories potentially created on remote AFP share
.AppleDB
.AppleDesktop
Network Trash Folder
Temporary Items
.apdisk

# ----------------------------------------------------------------------
# Windows
# ----------------------------------------------------------------------
## Windows thumbnail cache files
Thumbs.db
ehthumbs.db
ehthumbs_vista.db

## Dump file
*.stackdump

## Folder config file
[Dd]esktop.ini

## Recycle Bin used on file shares
$RECYCLE.BIN/

## Windows Installer files
*.cab
*.msi
*.msix
*.msm
*.msp

## Windows shortcuts
*.lnk
```

You should both commit this new file.

Person 2 should then send their new commit to the remote repository, and
set the default "upstream" branch for their local `master` branch to be
the `master` branch in the remote `origin` repository at the same time,
using an optional flag to the git command.

After Person 2 has sent their new commit to the remote repository,
Person 1 should try to send their new commit to the remote repository.
This will fail. Explain to Person 2 why this failed.

To move forward, Person 1 needs to get the new changes from the remote
repository. Do not use `git pull` to do this! Explain what the command
that you use instead of `git pull` does to Person 2.

Now that you've gotten these changes, you have a **local**
(remote-tracking) branch called `origin/master` that tracks the status
of the `master` branch in the `origin` remote repository. The **local**
(remote-tracking) branch called `origin/master` is updated to match the
status of the `master` branch in the `origin` remote repository any time
you use a git command that talks to the `origin` remote repository.
(Remember, there are very few git commands that actually do anything
over the network; git was designed this way in order to make it possible
to work on files without an internet connection.)

Normally, Person 1 would now reapply their changes on top of the changes
from Person 2. However, if you're being more careful, you might first
look at the changes that you just got from the `origin` remote
repository before reapplying your changes on top of those changes.

Person 1 should do this now. Look at the log, and use the options to the
git command that show you all branches in a concise, one-line graphical
format, including the branch pointers. Ask Person 2 for help if you
can't remember what all of these options are, or take a look at the help
page for the git command. (Or, of course, you can use the alias that we
set up last time for this command and forget all about the names of
these different options! 🎉)

Person 1 will notice from the commit messages (assuming you both wrote
informative commit messages) that you might have just introduced the
same or similar changes as Person 2. To confirm this, take a look at the
changes introduced by Person 2's commit that you just received from the
`origin` repository. (Hint: the command for this is one we learned at
the very end of the last lesson; some of you might have left before we
got to this.)

Now that you see the changes introduced by Person 2's commit, you
realize that you've duplicated work. Go ahead and discard the commit
that you just made. What command would you use to do this? Does it have
some optional flags? If so, which of these optional flags would you use
and why? What argument do you pass to this command? Discuss all of this
with Person 2. Then run the command.

## Step 5

Person 1 and Person 2 should do the following things at the same time.

Person 1 should create a file called `README.md` with the following
conent:

```markdown
# Octopus vs. sock

This experiment is an attempt to answer the age-old question of whether
people like pictures of ocotopuses more than pictures of socks.

This repository contains the source materials for the experiment, where
we asked participants to rate pictures on a scale of 1 to 7, using the
software [PsychoPy][psychopy].

[psychopy]: http://psychopy.org/
```

Commit this new file.

At the same time, Person 2 should create a folder inside the repository
called `materials`. Then, inside the `materials` folder, Person 2 should
create a file called `stimuli.csv`. Add the following contents to the
`stimuli.csv` file.[^1]

```
Condition,Image
```

This is just setting up the structure of the file that will eventually
contain the stimuli. That is to say, this is just the header row for the
CSV file. It doesn't yet add any stimuli.

Commit this new file.

Next, Person 1 should first send their changes to the remote `origin`
repository.

After this, Person 2 should try to send their changes to the remote
`origin` repository. It will fail. Discuss one more time with Person 1
why this fails.

Next, Person 2 should go ahead and get Person 1's changes from the
`origin` remote repository. If you're being careful, go ahead and
inspect the changes that you just got from the `origin` repository
before you reapply your changes on top of Person 1's changes. It doesn't
look like there is any cause for concern nor duplicated effort, so you
do in fact want to go ahead and reapply your changes on top of Person
1's changes. Do this, and explain the git command that you're using to
do it to Person 1. You should also discuss with Person 1 in precise
detail what this does to the graph of commits, why it is okay to do this
to Person 2's new commit (in contrast to it generally **not** being okay
to do this to "public commits"), and why you're doing things this way
(*i.e.*, why are you *not* using `git merge`). (Hints for the last
discussion point: think about the centralized workflow and the various
upshots of avoiding merge commits except when used as part of the
feature branch workflow.)

Now that Person 2 has reapplied their commit on top of Person 1's
commit, Person 2 can go ahead and send their changes to the remote
`origin` repository.

## Step 6

Person 2 should go ahead and set up the image files that we're about to
add to the repository to be tracked with Git LFS.

There are three things that need to be done for this, one of which will
also need to be done by Person 1.

Person 2 should navigate to the repository in GitLab in a broswer, and
go to Settings in the sidebar. Underneath the Settings item in the
sidebar menu, there is a "General" section, and on the "General" page,
there is a "Permissions" section that can be expanded by clicking the
"Expand" button. Click this, and then toggle the Git Large File Storage
option to "on" (this will be the blue checkmark state of the toggle).

This sets up the GitLab server to verify that the files that are being
tracked with Git LFS are being correctly stored on the GitLab server
each time you push a new file being tracked by Git LFS.

Next, *both Person 1 and Person 2* will need to run the command
`git lfs install` inside their local repository.

As a reminder, this does two things. If you're running it for the first
time ever on your computer, it sets up some options for Git LFS in your
global `~/.gitconfig` file. And second, it sets up the local repository
that you're currently in to use Git LFS.

Finally, Person 2 should run the following command:

``` bash
git lfs track "*.jpeg" "*.jpg" "*.png" "*.gif"
```

What did this command do? Discuss with Person 1.
(Hint: run `git status`.)

Remember that you always want to set up Git LFS to track a certain file
(or file type) using the `git lfs track` command **before** you actually
commit a file of that type in the git repository. If you commit the file
first, before setting up Git LFS to track that file (or file type), then
Git LFS won't actually be tracking the file; it will instead be tracked
by git directly. (If you find yourself in this situation, see
"[Migrating existing repository data to LFS][migrate-lfs]".)

Commit the changes that have now been introduced to your local
repository, and send them to the `origin`.

Person 1 should go ahead and get Person 2's new changes from the
`origin` remote repository (both this new commit and the commit from the
previous step). After getting these changes, Person 1 still needs to
incorporate these changes into their local `master` branch. Person 1
doesn't have any new commits, so this can be done with either of the git
commands that we've discussed for bringing branching commit histories
back together *while still following the principles of the centralized
workflow*. What are these two commands, and why can you use either of
them and still stick to the centralized workflow in this case? Discuss
this with Person 2. (Hint: what's a fast-forward merge?)

## Step 7

Now we're going to create some stimuli for this picture-rating task. We
will end up with 4 octopus stimuli and 4 sock stimuli, and we're going
to run into some situations here where both Person 1 and Person 2 have
to resolve merge conflicts.

Person 1 and Person 2 should do the following things at the same time.

Person 1 should create a folder inside of the `materials` folder called
`images`. Then, Person 1 should find two different octopus pictures from
the internet and save them both into this folder. (If either of these
pictures is not a JPEG, PNG, or GIF, make sure you also set up Git LFS
to track this new image file type; note that image files are sometimes
saved with an extension that uses all capital letters (*e.g.*, `.PNG`
instead of `.png`), so if you have a case-sensitive file system, you
might also need to tell Git LFS to track the all-capital-letter
variants, although neither the Windows nor the macOS file systems are
case sensitive by default).

Also, make sure you use names for the image files that don't contain
spaces!

Next, Person 1 should edit the `stimuli.csv` file to include the
following content:

```
Condition,Image
octopus,images/<FIRST_PICTURE_NAME_INCLUDING_FILE_EXTENSION>
octopus,images/<SECOND_PICTURE_NAME_INCLUDING_FILE_EXTENSION>
```

The Image column should contain the [relative file path][relative-path]
to two images that you've just saved to your computer in the `images`
folder.

Person 2 should do the exact same but for socks instead of octopuses.
This means that the `stimuli.csv` file for Person 2 should look like
this:

``` text
Condition,Image
sock,images/<FIRST_PICTURE_NAME_INCLUDING_FILE_EXTENSION>
sock,images/<SECOND_PICTURE_NAME_INCLUDING_FILE_EXTENSION>
```

Make sure that you are both not making any typos, and that you are
consistently spelling the condition identifier the same way. (This would
matter for the data analysis step, if I weren't giving you fabricated
data to copy and paste later in this exercise.) To ensure that this is
consistent, make sure you both use the singular form of the word, and,
again, don't make any typos!

At the same time, you should both stage your changes to be committed.
It's a good idea to review these changes before you actually commit
them. There are two reasons: first, we want to make sure that there
aren't any typos in the CSV file, and second, we want to make sure that
the image files are actually being tracked by Git LFS.

So, after you both stage your changes, you should review the changes
that you're about to commit before committing them. How do you do this?
Discuss it with each other if you cannot remember.

Now that you can see the changes you're about to commit, check the CSV
file for typos, and also check to make sure that both of the image files
are being tracked by Git LFS. You can tell that they are being tracked
by Git LFS if their diff looks something like this:

```
version https://git-lfs.github.com/spec/v1
oid sha256:4665a5ea423c2713d436b5ee50593a9640e0018c1550b5a0002f74190d6caea8
size 36
```

If anything is awry, go back and fix it before committing things (also,
even if you don't need to go back and fix anything, the information
contained in the note is information that might be good to be aware of,
so read the note that is referenced at the end of this sentence).[^2]

Now that you both have commits, Person 2 should send their changes to
the `origin` remote repository first.

Next, Person 1 should try and fail to send their changes. (After this
step, we'll stop with trying to send changes and failing, but I just
want to get you used to seeing and reading the messages that git prints
to the console, since they are usually pretty helpful.)

Okay, so Person 1 needs to get the new changes from the `origin` repo
before being able to push. Go ahead and get these changes (again, don't
use `git pull`!). Next, if you're being careful, inspect the changes
by using a combination of the `git log` and `git show` commands *before*
reapplying your changes on top Person 2's changes.

If you're being observant, you'll notice that you've both changed the
same file, and so you might run into a merge conflict when you go to
reapply your changes on top of Person 2's changes.

Go ahead and do this.

Note that you'll likely be asked for the password for your SSH private
key immediately after running this command. In fact, you'll probably be
asked for it multiple times. (You're not actually typing it incorrectly
(unless of course you are).) Why are you being asked for your SSH
passphrase here? You just ran a git command that does **not** do
anything over the network. And why are you being asked for it multiple
times? Discuss with Person 2. (Hint: it has something to do with Git
LFS, but you might not be able to answer this because I haven't talked
about it explicitly; try to reason through what might be happening given
what you know about Git LFS, but if you're stuck after a couple of
minutes, click the line below to reveal the answer.)

<details>
<summary>
<button type="button" class="btn btn-primary">
Click here to reveal/hide the answer to why you're asked for your passphrase here.
</button>
</summary>

<br />

The command you just ran is **not** a git command that interacts with
the network in any way, so it's a bit surprising that you're being asked
for your passphrase for your SSH private key. However, this is because
of Git LFS. Part of the philosophy behind Git LFS is that it really
tries to minimize what is stored on your local computer, so as not too
take up too much space. It only pulls down files from the server when it
needs to put them in your working tree. The first command that you ran
only got the changes from Person 2; it didn't yet try to put the changes
from Person 2 in your working tree. It is only when you ran the command
that you just ran (whose name I'm avoiding saying so that you don't read
this to figure out how to do this step in the exercise) that Git LFS
went to get those files from the server, because this command now leads
to those files being put in your working tree. Up until now, you just
had the pointer files (that are plain text files) that Git LFS
substitutes for the actual binary file behind the scenes. Now that
you're putting those binary files in to your working tree, Git LFS needs
to fetch the binary files that the pointer files point to from the
server.

Moreover, since there are two new binary (image) files from Person 2,
you will be asked for your SSH passphrase both times, because you need
to authenticate to the server each time you try to download a file from
it. Imagine instead of two new image files you had twenty new image
files. When working with Git LFS, it's definitely worth using the
`ssh-add` command to cache the credentials for your SSH private key.

Finally, I'll note that, in general, it's helpful of Git LFS to keep
only as much on your local computer as necessary because this minimizes
the size of the local repository, which is especially useful if you have
really large binary files that you've edited many times. However, if you
plan on working for a large chunk of time where you don't have an
internet connection and you need old versions of binary files, it's
worth running the command `git lfs fetch --recent` to explicitly fetch
the Git LFS objects that are referenced in recent commits before you
don't have an internet connection (*e.g.*, before you get on an
airplane). (For what "recent" means, see `git lfs fetch --help`; it has
a meaning with respect to branches as well as a meaning with respect to
commits, both of which are configurable.) If you want to ensure you have
all versions of every file tracked by Git LFS that is referenced in any
non-dangling commit, you can run the command `git lfs fetch --all`, but
note that this will make your local repository just as big as the remote
repository.

<br />

</details>

<br />

Looks like you do indeed have a merge conflict to deal with! Resolve the
merge conflict. Discuss this with Person 2 if it helps. When it comes to
dealing with merge conflicts, you'll need to actively think about
whether you want to keep the changes from Person 2, the changes from
you, or some combination thereof. What makes sense here?

Finally, Person 1 should send their reapplied commits to the `origin`
remote, and Person 2 should get these changes before going on to the
next step (revisit the discussion at the end of the previous step if it
is helpful for Person 2 here).

## Step 8

In this step, we're going to do the same thing as the previous step,
except now you're going to switch roles.

So, Person 1 should get two sock images and add them to the `images`
folder. Furthermore, Person 1 should add two new lines to the CSV file
for each of these two new sock images. Make sure you're using the `sock`
for the condition now, instead of `octopus`.

Similarly, and at the same time, Person 2 should get two octopus images
and add them to the `images` folder. Person 2 should also add two new
lines to the CSV file for each of these two new octopus images. Make
sure you're using `octopus` for the condition now, instead of `sock`.

You should both stage and review the changes that you're about to
commit, again checking for typos and checking to ensure that Git LFS is
tracking the image files, before actually committing the changes.

Now that you've both committed the changes, Person 1 should push their
changes to the `origin` repository first.

Person 2, you now have to get the changes from Person 1 and reapply your
changes on top of them. So go ahead and get the new changes from the
`origin` remote repository, and, if you're being careful, take a look at
these changes before attempting to reapply your changes on top of them.

If you're being observant, you'll notice that you'll probably run into a
merge conflict, but you do indeed want to go ahead and reapply your
changes on top of the changes from Person 1, since you've both
introduced different changes.

Go ahead and reapply your changes and resolve the merge conflict.

Note here that you'll likely be asked for your SSH passphrase even
though you've just run a git command that does **not** do anything over
the network. Revisit the discussion from the previous step with Person
1, and don't forget about the `ssh-add` command.

As for the merge conflict, talk through it with Person 1 if it is
helpful. Again, you'll need to actively think about whether you want to
keep the changes from Person 1, the changes from you, or some
combination thereof. What should you do here?

Now that you've resolved the merge conflict, Person 2 should send their
reapplied commits to the `origin` remote, and Person 1 should get these
changes before going on to the next step.

Each person should now have a copy of the final stimuli list in their
local repository, and it should contain 8 rows plus the header row, with
four sock trials and four octopus trials.

## Step 9

Next, each person should create a file called `our_experiment.psyexp` in
the `materials` folder. Add the following contents to that file (note
that you do not need to understand the contents of this file; this is
just a [PsychoPy][psychopy] expeirment, which you don't even need to be
able to run for the purposes of this exercise, but it is something you
can run if you'd like; it should run just fine as long as you haven't
made any mistakes in your `stimuli.csv` file).

<details>

<summary>
<button type="button" class="btn btn-primary">
The contents of this file are kind of long, so I've hidden them by
default.
<br />
Click this line to expand them to copy and paste them, and then
click this line again to hide the contents.
</button>
</summary>

```xml
<?xml version="1.0" ?>
<PsychoPy2experiment encoding="utf-8" version="1.90.2">
  <Settings>
    <Param name="Monitor" updates="None" val="testMonitor" valType="str"/>
    <Param name="color" updates="None" val="$[0,0,0]" valType="str"/>
    <Param name="colorSpace" updates="None" val="rgb" valType="str"/>
    <Param name="Experiment info" updates="None" val="{u'session': u'001', u'participant': u''}" valType="code"/>
    <Param name="JS libs" updates="None" val="packaged" valType="str"/>
    <Param name="Units" updates="None" val="use prefs" valType="str"/>
    <Param name="Save excel file" updates="None" val="False" valType="bool"/>
    <Param name="Enable Escape" updates="None" val="True" valType="bool"/>
    <Param name="Save psydat file" updates="None" val="True" valType="bool"/>
    <Param name="Window size (pixels)" updates="None" val="[2560, 1440]" valType="code"/>
    <Param name="Full-screen window" updates="None" val="True" valType="bool"/>
    <Param name="blendMode" updates="None" val="avg" valType="str"/>
    <Param name="Use version" updates="None" val="" valType="str"/>
    <Param name="HTML path" updates="None" val="html" valType="str"/>
    <Param name="Save csv file" updates="None" val="False" valType="bool"/>
    <Param name="OSF Project ID" updates="None" val="" valType="str"/>
    <Param name="Save log file" updates="None" val="True" valType="bool"/>
    <Param name="Save wide csv file" updates="None" val="True" valType="bool"/>
    <Param name="Show mouse" updates="None" val="False" valType="bool"/>
    <Param name="Data filename" updates="None" val="u'data/%s_%s_%s' % (expInfo['participant'], expName, expInfo['date'])" valType="code"/>
    <Param name="Show info dlg" updates="None" val="True" valType="bool"/>
    <Param name="expName" updates="None" val="our_experiment" valType="str"/>
    <Param name="logging level" updates="None" val="exp" valType="code"/>
    <Param name="Screen" updates="None" val="1" valType="num"/>
  </Settings>
  <Routines>
    <Routine name="trial">
      <RatingScaleComponent name="rating">
        <Param name="labels" updates="constant" val="Terrible Amazing" valType="str"/>
        <Param name="pos" updates="constant" val="0, -0.4" valType="str"/>
        <Param name="high" updates="constant" val="7" valType="code"/>
        <Param name="storeRating" updates="constant" val="True" valType="bool"/>
        <Param name="marker" updates="constant" val="triangle" valType="str"/>
        <Param name="startVal" updates="None" val="0.0" valType="code"/>
        <Param name="markerStart" updates="constant" val="" valType="str"/>
        <Param name="disappear" updates="constant" val="False" valType="bool"/>
        <Param name="size" updates="constant" val="1.0" valType="code"/>
        <Param name="tickHeight" updates="constant" val="" valType="str"/>
        <Param name="showAccept" updates="constant" val="True" valType="bool"/>
        <Param name="storeRatingTime" updates="constant" val="True" valType="bool"/>
        <Param name="forceEndRoutine" updates="constant" val="True" valType="bool"/>
        <Param name="low" updates="constant" val="1" valType="code"/>
        <Param name="durationEstim" updates="None" val="" valType="code"/>
        <Param name="stopVal" updates="constant" val="" valType="code"/>
        <Param name="visualAnalogScale" updates="constant" val="False" valType="bool"/>
        <Param name="startEstim" updates="None" val="" valType="code"/>
        <Param name="startType" updates="None" val="time (s)" valType="str"/>
        <Param name="stopType" updates="None" val="condition" valType="str"/>
        <Param name="scaleDescription" updates="constant" val="" valType="str"/>
        <Param name="storeHistory" updates="constant" val="False" valType="bool"/>
        <Param name="categoryChoices" updates="constant" val="" valType="str"/>
        <Param name="customize_everything" updates="constant" val="" valType="str"/>
        <Param name="name" updates="None" val="rating" valType="code"/>
        <Param name="singleClick" updates="constant" val="False" valType="bool"/>
      </RatingScaleComponent>
      <ImageComponent name="image">
        <Param name="opacity" updates="constant" val="1" valType="code"/>
        <Param name="flipVert" updates="constant" val="False" valType="bool"/>
        <Param name="colorSpace" updates="constant" val="rgb" valType="str"/>
        <Param name="flipHoriz" updates="constant" val="False" valType="bool"/>
        <Param name="name" updates="None" val="image" valType="code"/>
        <Param name="color" updates="constant" val="$[1,1,1]" valType="str"/>
        <Param name="stopVal" updates="constant" val="" valType="code"/>
        <Param name="durationEstim" updates="None" val="" valType="code"/>
        <Param name="mask" updates="constant" val="None" valType="str"/>
        <Param name="pos" updates="constant" val="(0, 0)" valType="code"/>
        <Param name="interpolate" updates="constant" val="linear" valType="str"/>
        <Param name="startEstim" updates="None" val="" valType="code"/>
        <Param name="units" updates="None" val="from exp settings" valType="str"/>
        <Param name="texture resolution" updates="constant" val="128" valType="code"/>
        <Param name="startType" updates="None" val="time (s)" valType="str"/>
        <Param name="ori" updates="constant" val="0" valType="code"/>
        <Param name="stopType" updates="None" val="duration (s)" valType="str"/>
        <Param name="startVal" updates="None" val="0.0" valType="code"/>
        <Param name="image" updates="set every repeat" val="$Image" valType="str"/>
        <Param name="size" updates="constant" val="(0.5, 0.5)" valType="code"/>
      </ImageComponent>
    </Routine>
    <Routine name="intro">
      <TextComponent name="text">
        <Param name="opacity" updates="constant" val="1" valType="code"/>
        <Param name="colorSpace" updates="constant" val="rgb" valType="str"/>
        <Param name="name" updates="None" val="text" valType="code"/>
        <Param name="wrapWidth" updates="constant" val="" valType="code"/>
        <Param name="color" updates="constant" val="white" valType="str"/>
        <Param name="text" updates="constant" val="Thanks for participating in this experiment.&amp;#10;&amp;#10;In this experiment, you will rate pictures based on how terrible or great you think they are, on a scale from 1 to 7.&amp;#10;&amp;#10;If you think the picture is terrible, rate it as 1.&amp;#10;&amp;#10;If you think the picture is great, rate it as 7." valType="str"/>
        <Param name="stopVal" updates="constant" val="" valType="code"/>
        <Param name="durationEstim" updates="None" val="" valType="code"/>
        <Param name="pos" updates="constant" val="(0, 0)" valType="code"/>
        <Param name="flip" updates="constant" val="" valType="str"/>
        <Param name="startEstim" updates="None" val="" valType="code"/>
        <Param name="units" updates="None" val="from exp settings" valType="str"/>
        <Param name="startType" updates="None" val="time (s)" valType="str"/>
        <Param name="ori" updates="constant" val="0" valType="code"/>
        <Param name="stopType" updates="None" val="duration (s)" valType="str"/>
        <Param name="startVal" updates="None" val="0.0" valType="code"/>
        <Param name="font" updates="constant" val="Arial" valType="str"/>
        <Param name="letterHeight" updates="constant" val="0.08" valType="code"/>
      </TextComponent>
      <TextComponent name="text_2">
        <Param name="opacity" updates="constant" val="1" valType="code"/>
        <Param name="colorSpace" updates="constant" val="rgb" valType="str"/>
        <Param name="name" updates="None" val="text_2" valType="code"/>
        <Param name="wrapWidth" updates="constant" val="" valType="code"/>
        <Param name="color" updates="constant" val="white" valType="str"/>
        <Param name="text" updates="constant" val="Press 'space' when you're ready to start the experiment." valType="str"/>
        <Param name="stopVal" updates="constant" val="" valType="code"/>
        <Param name="durationEstim" updates="None" val="" valType="code"/>
        <Param name="pos" updates="constant" val="(0, -0.7)" valType="code"/>
        <Param name="flip" updates="constant" val="" valType="str"/>
        <Param name="startEstim" updates="None" val="" valType="code"/>
        <Param name="units" updates="None" val="from exp settings" valType="str"/>
        <Param name="startType" updates="None" val="time (s)" valType="str"/>
        <Param name="ori" updates="constant" val="0" valType="code"/>
        <Param name="stopType" updates="None" val="duration (s)" valType="str"/>
        <Param name="startVal" updates="None" val="6.0" valType="code"/>
        <Param name="font" updates="constant" val="Arial" valType="str"/>
        <Param name="letterHeight" updates="constant" val="0.06" valType="code"/>
      </TextComponent>
      <KeyboardComponent name="key_resp_2">
        <Param name="correctAns" updates="constant" val="" valType="str"/>
        <Param name="storeCorrect" updates="constant" val="False" valType="bool"/>
        <Param name="name" updates="None" val="key_resp_2" valType="code"/>
        <Param name="stopVal" updates="constant" val="" valType="code"/>
        <Param name="durationEstim" updates="None" val="" valType="code"/>
        <Param name="forceEndRoutine" updates="constant" val="True" valType="bool"/>
        <Param name="startEstim" updates="None" val="" valType="code"/>
        <Param name="discard previous" updates="constant" val="True" valType="bool"/>
        <Param name="startType" updates="None" val="time (s)" valType="str"/>
        <Param name="allowedKeys" updates="constant" val="'space'" valType="code"/>
        <Param name="stopType" updates="None" val="duration (s)" valType="str"/>
        <Param name="startVal" updates="None" val="6.0" valType="code"/>
        <Param name="store" updates="constant" val="last key" valType="str"/>
        <Param name="syncScreenRefresh" updates="constant" val="True" valType="bool"/>
      </KeyboardComponent>
    </Routine>
    <Routine name="thanks">
      <TextComponent name="text_3">
        <Param name="opacity" updates="constant" val="1" valType="code"/>
        <Param name="colorSpace" updates="constant" val="rgb" valType="str"/>
        <Param name="name" updates="None" val="text_3" valType="code"/>
        <Param name="wrapWidth" updates="constant" val="" valType="code"/>
        <Param name="color" updates="constant" val="white" valType="str"/>
        <Param name="text" updates="constant" val="Thanks for participating in the expeirment!" valType="str"/>
        <Param name="stopVal" updates="constant" val="6.0" valType="code"/>
        <Param name="durationEstim" updates="None" val="" valType="code"/>
        <Param name="pos" updates="constant" val="(0, 0)" valType="code"/>
        <Param name="flip" updates="constant" val="" valType="str"/>
        <Param name="startEstim" updates="None" val="" valType="code"/>
        <Param name="units" updates="None" val="from exp settings" valType="str"/>
        <Param name="startType" updates="None" val="time (s)" valType="str"/>
        <Param name="ori" updates="constant" val="0" valType="code"/>
        <Param name="stopType" updates="None" val="duration (s)" valType="str"/>
        <Param name="startVal" updates="None" val="0.0" valType="code"/>
        <Param name="font" updates="constant" val="Arial" valType="str"/>
        <Param name="letterHeight" updates="constant" val="0.1" valType="code"/>
      </TextComponent>
    </Routine>
  </Routines>
  <Flow>
    <Routine name="intro"/>
    <LoopInitiator loopType="TrialHandler" name="trials">
      <Param name="conditionsFile" updates="None" val="stimuli.csv" valType="str"/>
      <Param name="name" updates="None" val="trials" valType="code"/>
      <Param name="isTrials" updates="None" val="True" valType="bool"/>
      <Param name="random seed" updates="None" val="" valType="code"/>
      <Param name="loopType" updates="None" val="random" valType="str"/>
      <Param name="nReps" updates="None" val="1" valType="code"/>
      <Param name="endPoints" updates="None" val="[0, 1]" valType="num"/>
      <Param name="conditions" updates="None" val="[OrderedDict([(u'Condition', u'sock'), (u'Image', u'images/s1.jpg')]), OrderedDict([(u'Condition', u'sock'), (u'Image', u'images/s2.jpg')]), OrderedDict([(u'Condition', u'sock'), (u'Image', u'images/s3.jpg')]), OrderedDict([(u'Condition', u'sock'), (u'Image', u'images/s4.jpg')]), OrderedDict([(u'Condition', u'octopus'), (u'Image', u'images/o1.jpg')]), OrderedDict([(u'Condition', u'octopus'), (u'Image', u'images/o2.jpg')]), OrderedDict([(u'Condition', u'octopus'), (u'Image', u'images/o3.jpg')]), OrderedDict([(u'Condition', u'octopus'), (u'Image', u'images/o4.jpg')])]" valType="str"/>
      <Param name="Selected rows" updates="None" val="" valType="str"/>
    </LoopInitiator>
    <Routine name="trial"/>
    <LoopTerminator name="trials"/>
    <Routine name="thanks"/>
  </Flow>
</PsychoPy2experiment>
```

</details>

<br />

Now, at the same time, Person 1 and Person 2 should both commit this file.
However, Person 1 should send their changes ot the `origin` remote
repository first.

In order for Person 2 to send their changes to the remote `origin`
repository, Person 2 will need to get new changes from the remote. Go
ahead and do this. Since you're being careful, Person 2 should check the
commits that they've just received from the remote repository before
reapplying their changes on top. Do this by looking both at the commit
history and by looking at the changes introduced in the most recent
commit in the `origin` repository (*i.e.*, the commit that
`origin/master` points to).

Uh oh! It looks like you and Person 1 have duplicated work again.  Now
that you see the changes introduced by Person 1's commit, you realize
that you've duplicated work. Go ahead and discard the commit that you
just made. What command would you use to do this? Does it have some
optional flags? If so, which of these optional flags would you use and
why? What argument do you pass to this command? Discuss all of this with
Person 1 again one more time, and now you can run the command, so you
also get some practice dealing with this situation.

Remember that, while quite powerful, git is not a substitute for
communication with your collaborators. This is one of the reasons
services like GitLab and GitHub are so great; they provide
communication, discussion, and delegation tools on top of git
repositories, by allowing you to create issues, assign issues to certain
people, discuss the changes made to address issues, *etc.*.

Resolve to communicate better with your collaborators and move on to the
next step. 🤪

## Step 10

Now that you have a PsychoPy experiment, there are a few things worth
adding to your `.gitignore` file. By defualt, PsychoPy saves all data
from each run of the experiment in a folder called `data` that is in the
same folder as the `.psyexp` file. On the assumption that you're
deploying this experiment on computers in a lab and not actually testing
people on your own computer, all of the data inside that `data` folder
will just be data from you and your collaborator testing the experiment.

That's not data that we want to track in our repository, so Person 1
should go ahead and add the following lines to
**the end of your `.gitignore` file**:

```
# ----------------------------------------------------------------------
# PsychoPy stuff
# ----------------------------------------------------------------------
materials/data
```

At the same time, Person 2 should add the following lines to
**the end of the `.gitignore` file**:

```
# ----------------------------------------------------------------------
# PsychoPy stuff
# ----------------------------------------------------------------------
*_lastrun.py
```

(Order only matters in the `.gitignore` file insofar as patterns later
in the file take precedence over patterns earlier in the file; in this
particular case, it doesn't really matter where you put these lines
because these patterns aren't overriding any other patterns in the
`.gitignore` file. I'm only having you both put these lines at the end
of the file in order to intentionally create a merge conflict for one of
you to deal with.)

This is for similar reasons: PsychoPy creats a `_lastrun.py` file each
time you run a PsychoPy experiment, which contains debugging information
about that run of the experiment. Again, on the assumption that you're
not actually testing participants on your personal computer, there's no
reason to track this file. (And, unlike in the data case, even if you
were testing participants on your own personal computer, there probably
still isn't any reason to track this file, since it's just debugging
information and not actual participant data. Further, note that this
will ignore any file that ends with `_lastrun.py` in any folder, not
just the `materials` folder. You should make this `.gitignore` pattern
is a bit more general since this really isn't a file that we would ever
want to track.)

You should now both commit these changes. Person 2 should go ahead and
push their commit to the `origin` repository first.

Person 1, now that Person 2 has pushed their change, you will need to
get their changes from the `origin` remote before you can push your own
changes. Go ahead and do this. Again, just so you get in the habbit,
inspect the changes that you just received from the `origin` remote
repository before you decide to reapply your changes on top of those new
changes from Person 2. Looks like you might run into a merge conflict!
🧐

Go ahead and reapply your changes on top of the changes from Person 2,
resolving the merge conflict in the process. How should you resolve the
merge conflict in this case? Talk through it with Person 2.

When you resolve the merge conflict, push your changes to the `origin`
repository, and Person 2 should get your changes before moving on to the
next step.

## Step 11

Alright, [data][data]!

If we were being meticulous, you'd create a bunch of individual files
with data, since, with PsychoPy, you get an individual CSV file for each
participant that participates in your experiment. But being that
faithful to emulating the collaboration process seems a bit overblown
and would just take more time than it's worth, when the focus here is
supposed to be on git.

Nonetheless, Person 2 should create a `raw_data` folder in the
repository where you would keep your hypothetical many CSV files of raw
data from your many participants. But then, for the sake of simplicity,
Person 2 should just create a single CSV file in this folder called
`data.csv`. Person 2 should add the following content to that file
(again, hidden by default because it's a lot).

<details>

<summary>
<button type="button" class="btn btn-primary">
Click this line to reveal/hide the contents of the
<code>data.csv</code> file.
</button>
</summary>

```
"Condition","Image","trials.thisRepN","trials.thisTrialN","trials.thisN","trials.thisIndex","key_resp_2.keys","key_resp_2.rt","rating.response","rating.rt","date","frameRate","expName","session","participant","X"
"","",NA,NA,NA,NA,"space",4.06765985846779,NA,NA,"2018_Jul_09_2142",59.9330124944272,"our_experiment",1,1,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28246421008259,"2018_Jul_09_2142",59.9330124944272,"our_experiment",1,1,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,6,2.04114971723557,"2018_Jul_09_2142",59.9330124944272,"our_experiment",1,1,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59881272703223,"2018_Jul_09_2142",59.9330124944272,"our_experiment",1,1,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45348398205712,"2018_Jul_09_2142",59.9330124944272,"our_experiment",1,1,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33584796792977,"2018_Jul_09_2142",59.9330124944272,"our_experiment",1,1,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48403399302177,"2018_Jul_09_2142",59.9330124944272,"our_experiment",1,1,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47165661739707,"2018_Jul_09_2142",59.9330124944272,"our_experiment",1,1,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41373403766342,"2018_Jul_09_2142",59.9330124944272,"our_experiment",1,1,NA
"","",NA,NA,NA,NA,"space",4.07288188190608,NA,NA,"2018_Jul_09_2151",59.9330124944272,"our_experiment",1,10,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28487234223411,"2018_Jul_09_2151",59.9330124944272,"our_experiment",1,10,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04274147955999,"2018_Jul_09_2151",59.9330124944272,"our_experiment",1,10,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59804689282253,"2018_Jul_09_2151",59.9330124944272,"our_experiment",1,10,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45284217865616,"2018_Jul_09_2151",59.9330124944272,"our_experiment",1,10,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33888431723081,"2018_Jul_09_2151",59.9330124944272,"our_experiment",1,10,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48311025566868,"2018_Jul_09_2151",59.9330124944272,"our_experiment",1,10,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47128748745173,"2018_Jul_09_2151",59.9330124944272,"our_experiment",1,10,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41528785822131,"2018_Jul_09_2151",59.9330124944272,"our_experiment",1,10,NA
"","",NA,NA,NA,NA,"space",4.00091899122404,NA,NA,"2018_Jul_09_2321",59.9330124944272,"our_experiment",1,100,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28274018341303,"2018_Jul_09_2321",59.9330124944272,"our_experiment",1,100,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04511837617159,"2018_Jul_09_2321",59.9330124944272,"our_experiment",1,100,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59945102775097,"2018_Jul_09_2321",59.9330124944272,"our_experiment",1,100,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45301820818037,"2018_Jul_09_2321",59.9330124944272,"our_experiment",1,100,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33607100526914,"2018_Jul_09_2321",59.9330124944272,"our_experiment",1,100,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,6,1.48249920486696,"2018_Jul_09_2321",59.9330124944272,"our_experiment",1,100,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47230760932304,"2018_Jul_09_2321",59.9330124944272,"our_experiment",1,100,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41387468664013,"2018_Jul_09_2321",59.9330124944272,"our_experiment",1,100,NA
"","",NA,NA,NA,NA,"space",4.04064730003307,NA,NA,"2018_Jul_09_2152",59.9330124944272,"our_experiment",1,11,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28412962507643,"2018_Jul_09_2152",59.9330124944272,"our_experiment",1,11,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04387348643094,"2018_Jul_09_2152",59.9330124944272,"our_experiment",1,11,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59695348098576,"2018_Jul_09_2152",59.9330124944272,"our_experiment",1,11,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45246983855702,"2018_Jul_09_2152",59.9330124944272,"our_experiment",1,11,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33714521828182,"2018_Jul_09_2152",59.9330124944272,"our_experiment",1,11,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48579303237759,"2018_Jul_09_2152",59.9330124944272,"our_experiment",1,11,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47395135129467,"2018_Jul_09_2152",59.9330124944272,"our_experiment",1,11,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41785618245639,"2018_Jul_09_2152",59.9330124944272,"our_experiment",1,11,NA
"","",NA,NA,NA,NA,"space",4.02439602706189,NA,NA,"2018_Jul_09_2153",59.9330124944272,"our_experiment",1,12,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28496071889773,"2018_Jul_09_2153",59.9330124944272,"our_experiment",1,12,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04396716761999,"2018_Jul_09_2153",59.9330124944272,"our_experiment",1,12,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.60064682580344,"2018_Jul_09_2153",59.9330124944272,"our_experiment",1,12,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,2,1.45359741931371,"2018_Jul_09_2153",59.9330124944272,"our_experiment",1,12,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33923923523799,"2018_Jul_09_2153",59.9330124944272,"our_experiment",1,12,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48390501965396,"2018_Jul_09_2153",59.9330124944272,"our_experiment",1,12,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.4703670591332,"2018_Jul_09_2153",59.9330124944272,"our_experiment",1,12,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41785732535012,"2018_Jul_09_2153",59.9330124944272,"our_experiment",1,12,NA
"","",NA,NA,NA,NA,"space",4.10994234392004,NA,NA,"2018_Jul_09_2154",59.9330124944272,"our_experiment",1,13,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28598975942805,"2018_Jul_09_2154",59.9330124944272,"our_experiment",1,13,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04332236330323,"2018_Jul_09_2154",59.9330124944272,"our_experiment",1,13,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.60076775472015,"2018_Jul_09_2154",59.9330124944272,"our_experiment",1,13,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45397969796173,"2018_Jul_09_2154",59.9330124944272,"our_experiment",1,13,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33886557303332,"2018_Jul_09_2154",59.9330124944272,"our_experiment",1,13,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48531462129429,"2018_Jul_09_2154",59.9330124944272,"our_experiment",1,13,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47030442067794,"2018_Jul_09_2154",59.9330124944272,"our_experiment",1,13,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.4136947125107,"2018_Jul_09_2154",59.9330124944272,"our_experiment",1,13,NA
"","",NA,NA,NA,NA,"space",4.02508527944981,NA,NA,"2018_Jul_09_2155",59.9330124944272,"our_experiment",1,14,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28324540915452,"2018_Jul_09_2155",59.9330124944272,"our_experiment",1,14,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04271495267265,"2018_Jul_09_2155",59.9330124944272,"our_experiment",1,14,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59985903324373,"2018_Jul_09_2155",59.9330124944272,"our_experiment",1,14,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,2,1.45320408161618,"2018_Jul_09_2155",59.9330124944272,"our_experiment",1,14,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33791978259906,"2018_Jul_09_2155",59.9330124944272,"our_experiment",1,14,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48310642513223,"2018_Jul_09_2155",59.9330124944272,"our_experiment",1,14,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.4697544157654,"2018_Jul_09_2155",59.9330124944272,"our_experiment",1,14,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41575114433356,"2018_Jul_09_2155",59.9330124944272,"our_experiment",1,14,NA
"","",NA,NA,NA,NA,"space",4.11476421996551,NA,NA,"2018_Jul_09_2156",59.9330124944272,"our_experiment",1,15,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.2846262277104,"2018_Jul_09_2156",59.9330124944272,"our_experiment",1,15,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04252271633521,"2018_Jul_09_2156",59.9330124944272,"our_experiment",1,15,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.60034014320038,"2018_Jul_09_2156",59.9330124944272,"our_experiment",1,15,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45538898027614,"2018_Jul_09_2156",59.9330124944272,"our_experiment",1,15,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33920396447219,"2018_Jul_09_2156",59.9330124944272,"our_experiment",1,15,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48237016063854,"2018_Jul_09_2156",59.9330124944272,"our_experiment",1,15,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47240020832904,"2018_Jul_09_2156",59.9330124944272,"our_experiment",1,15,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,6,1.4149996346131,"2018_Jul_09_2156",59.9330124944272,"our_experiment",1,15,NA
"","",NA,NA,NA,NA,"space",4.00553268717775,NA,NA,"2018_Jul_09_2157",59.9330124944272,"our_experiment",1,16,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28180003228635,"2018_Jul_09_2157",59.9330124944272,"our_experiment",1,16,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04235940069743,"2018_Jul_09_2157",59.9330124944272,"our_experiment",1,16,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.60019462323822,"2018_Jul_09_2157",59.9330124944272,"our_experiment",1,16,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45118551522084,"2018_Jul_09_2157",59.9330124944272,"our_experiment",1,16,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33793925796114,"2018_Jul_09_2157",59.9330124944272,"our_experiment",1,16,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48470048982687,"2018_Jul_09_2157",59.9330124944272,"our_experiment",1,16,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47101688828468,"2018_Jul_09_2157",59.9330124944272,"our_experiment",1,16,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41571887993291,"2018_Jul_09_2157",59.9330124944272,"our_experiment",1,16,NA
"","",NA,NA,NA,NA,"space",4.08865440687729,NA,NA,"2018_Jul_09_2158",59.9330124944272,"our_experiment",1,17,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28517743136026,"2018_Jul_09_2158",59.9330124944272,"our_experiment",1,17,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04336552469879,"2018_Jul_09_2158",59.9330124944272,"our_experiment",1,17,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59841542853676,"2018_Jul_09_2158",59.9330124944272,"our_experiment",1,17,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45212723816894,"2018_Jul_09_2158",59.9330124944272,"our_experiment",1,17,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33896296127886,"2018_Jul_09_2158",59.9330124944272,"our_experiment",1,17,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48276293421164,"2018_Jul_09_2158",59.9330124944272,"our_experiment",1,17,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47336461276971,"2018_Jul_09_2158",59.9330124944272,"our_experiment",1,17,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41673691054508,"2018_Jul_09_2158",59.9330124944272,"our_experiment",1,17,NA
"","",NA,NA,NA,NA,"space",4.00959995730056,NA,NA,"2018_Jul_09_2159",59.9330124944272,"our_experiment",1,18,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28348885286525,"2018_Jul_09_2159",59.9330124944272,"our_experiment",1,18,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04148194579519,"2018_Jul_09_2159",59.9330124944272,"our_experiment",1,18,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59809951004311,"2018_Jul_09_2159",59.9330124944272,"our_experiment",1,18,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.4518211752668,"2018_Jul_09_2159",59.9330124944272,"our_experiment",1,18,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33839784954153,"2018_Jul_09_2159",59.9330124944272,"our_experiment",1,18,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48349650288075,"2018_Jul_09_2159",59.9330124944272,"our_experiment",1,18,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.46998473360576,"2018_Jul_09_2159",59.9330124944272,"our_experiment",1,18,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41676547099724,"2018_Jul_09_2159",59.9330124944272,"our_experiment",1,18,NA
"","",NA,NA,NA,NA,"space",4.05107159925578,NA,NA,"2018_Jul_09_2200",59.9330124944272,"our_experiment",1,19,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28243068285324,"2018_Jul_09_2200",59.9330124944272,"our_experiment",1,19,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04164229595028,"2018_Jul_09_2200",59.9330124944272,"our_experiment",1,19,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.60074267531596,"2018_Jul_09_2200",59.9330124944272,"our_experiment",1,19,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45104758980609,"2018_Jul_09_2200",59.9330124944272,"our_experiment",1,19,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33721184582785,"2018_Jul_09_2200",59.9330124944272,"our_experiment",1,19,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48476007552929,"2018_Jul_09_2200",59.9330124944272,"our_experiment",1,19,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47163936104216,"2018_Jul_09_2200",59.9330124944272,"our_experiment",1,19,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41639620563611,"2018_Jul_09_2200",59.9330124944272,"our_experiment",1,19,NA
"","",NA,NA,NA,NA,"space",4.00417278246561,NA,NA,"2018_Jul_09_2143",59.9330124944272,"our_experiment",1,2,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28169022340365,"2018_Jul_09_2143",59.9330124944272,"our_experiment",1,2,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04439312658384,"2018_Jul_09_2143",59.9330124944272,"our_experiment",1,2,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59985133664496,"2018_Jul_09_2143",59.9330124944272,"our_experiment",1,2,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45269489375241,"2018_Jul_09_2143",59.9330124944272,"our_experiment",1,2,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33494706772342,"2018_Jul_09_2143",59.9330124944272,"our_experiment",1,2,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48479399449527,"2018_Jul_09_2143",59.9330124944272,"our_experiment",1,2,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47217801506296,"2018_Jul_09_2143",59.9330124944272,"our_experiment",1,2,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41613598474599,"2018_Jul_09_2143",59.9330124944272,"our_experiment",1,2,NA
"","",NA,NA,NA,NA,"space",4.08508975611801,NA,NA,"2018_Jul_09_2201",59.9330124944272,"our_experiment",1,20,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.28372273291163,"2018_Jul_09_2201",59.9330124944272,"our_experiment",1,20,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,6,2.04502444991693,"2018_Jul_09_2201",59.9330124944272,"our_experiment",1,20,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.60063299709149,"2018_Jul_09_2201",59.9330124944272,"our_experiment",1,20,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45065110716932,"2018_Jul_09_2201",59.9330124944272,"our_experiment",1,20,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33908319336325,"2018_Jul_09_2201",59.9330124944272,"our_experiment",1,20,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48512838007621,"2018_Jul_09_2201",59.9330124944272,"our_experiment",1,20,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47168339495808,"2018_Jul_09_2201",59.9330124944272,"our_experiment",1,20,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41368343735784,"2018_Jul_09_2201",59.9330124944272,"our_experiment",1,20,NA
"","",NA,NA,NA,NA,"space",4.11354588295738,NA,NA,"2018_Jul_09_2202",59.9330124944272,"our_experiment",1,21,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28462447132952,"2018_Jul_09_2202",59.9330124944272,"our_experiment",1,21,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04282681153752,"2018_Jul_09_2202",59.9330124944272,"our_experiment",1,21,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.60040413584486,"2018_Jul_09_2202",59.9330124944272,"our_experiment",1,21,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45354619330689,"2018_Jul_09_2202",59.9330124944272,"our_experiment",1,21,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33867207000814,"2018_Jul_09_2202",59.9330124944272,"our_experiment",1,21,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48404756748602,"2018_Jul_09_2202",59.9330124944272,"our_experiment",1,21,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47201904433444,"2018_Jul_09_2202",59.9330124944272,"our_experiment",1,21,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41681764694415,"2018_Jul_09_2202",59.9330124944272,"our_experiment",1,21,NA
"","",NA,NA,NA,NA,"space",4.15458005770227,NA,NA,"2018_Jul_09_2203",59.9330124944272,"our_experiment",1,22,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28196349490136,"2018_Jul_09_2203",59.9330124944272,"our_experiment",1,22,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04091354976222,"2018_Jul_09_2203",59.9330124944272,"our_experiment",1,22,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,1,1.6002750129506,"2018_Jul_09_2203",59.9330124944272,"our_experiment",1,22,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45199234678857,"2018_Jul_09_2203",59.9330124944272,"our_experiment",1,22,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33783020071499,"2018_Jul_09_2203",59.9330124944272,"our_experiment",1,22,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48263321316577,"2018_Jul_09_2203",59.9330124944272,"our_experiment",1,22,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47062984172963,"2018_Jul_09_2203",59.9330124944272,"our_experiment",1,22,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41466411803737,"2018_Jul_09_2203",59.9330124944272,"our_experiment",1,22,NA
"","",NA,NA,NA,NA,"space",4.05972710053007,NA,NA,"2018_Jul_09_2204",59.9330124944272,"our_experiment",1,23,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.28186598850451,"2018_Jul_09_2204",59.9330124944272,"our_experiment",1,23,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04306775294058,"2018_Jul_09_2204",59.9330124944272,"our_experiment",1,23,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59782812774926,"2018_Jul_09_2204",59.9330124944272,"our_experiment",1,23,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45475473909527,"2018_Jul_09_2204",59.9330124944272,"our_experiment",1,23,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33503430849612,"2018_Jul_09_2204",59.9330124944272,"our_experiment",1,23,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,6,1.4850041324567,"2018_Jul_09_2204",59.9330124944272,"our_experiment",1,23,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.46968173099123,"2018_Jul_09_2204",59.9330124944272,"our_experiment",1,23,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41788711997494,"2018_Jul_09_2204",59.9330124944272,"our_experiment",1,23,NA
"","",NA,NA,NA,NA,"space",4.01427495455934,NA,NA,"2018_Jul_09_2205",59.9330124944272,"our_experiment",1,24,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28245361931883,"2018_Jul_09_2205",59.9330124944272,"our_experiment",1,24,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04148785857968,"2018_Jul_09_2205",59.9330124944272,"our_experiment",1,24,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.60076377130002,"2018_Jul_09_2205",59.9330124944272,"our_experiment",1,24,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45132054349892,"2018_Jul_09_2205",59.9330124944272,"our_experiment",1,24,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33687367589921,"2018_Jul_09_2205",59.9330124944272,"our_experiment",1,24,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,6,1.48453714688309,"2018_Jul_09_2205",59.9330124944272,"our_experiment",1,24,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47135490453169,"2018_Jul_09_2205",59.9330124944272,"our_experiment",1,24,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,6,1.41454105723053,"2018_Jul_09_2205",59.9330124944272,"our_experiment",1,24,NA
"","",NA,NA,NA,NA,"space",4.06156733312888,NA,NA,"2018_Jul_09_2206",59.9330124944272,"our_experiment",1,25,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28452752834186,"2018_Jul_09_2206",59.9330124944272,"our_experiment",1,25,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04398912511393,"2018_Jul_09_2206",59.9330124944272,"our_experiment",1,25,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,2,1.59717460825145,"2018_Jul_09_2206",59.9330124944272,"our_experiment",1,25,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45210405880027,"2018_Jul_09_2206",59.9330124944272,"our_experiment",1,25,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33928307932504,"2018_Jul_09_2206",59.9330124944272,"our_experiment",1,25,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48431126420051,"2018_Jul_09_2206",59.9330124944272,"our_experiment",1,25,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47229408953786,"2018_Jul_09_2206",59.9330124944272,"our_experiment",1,25,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41495632711314,"2018_Jul_09_2206",59.9330124944272,"our_experiment",1,25,NA
"","",NA,NA,NA,NA,"space",4.04363219246081,NA,NA,"2018_Jul_09_2207",59.9330124944272,"our_experiment",1,26,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28243912370242,"2018_Jul_09_2207",59.9330124944272,"our_experiment",1,26,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04127194071151,"2018_Jul_09_2207",59.9330124944272,"our_experiment",1,26,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59746362327561,"2018_Jul_09_2207",59.9330124944272,"our_experiment",1,26,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45506237414852,"2018_Jul_09_2207",59.9330124944272,"our_experiment",1,26,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33463303970657,"2018_Jul_09_2207",59.9330124944272,"our_experiment",1,26,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48200703473315,"2018_Jul_09_2207",59.9330124944272,"our_experiment",1,26,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.46976925396807,"2018_Jul_09_2207",59.9330124944272,"our_experiment",1,26,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41474200360477,"2018_Jul_09_2207",59.9330124944272,"our_experiment",1,26,NA
"","",NA,NA,NA,NA,"space",4.08718012305914,NA,NA,"2018_Jul_09_2208",59.9330124944272,"our_experiment",1,27,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.28446103159487,"2018_Jul_09_2208",59.9330124944272,"our_experiment",1,27,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.0418696136985,"2018_Jul_09_2208",59.9330124944272,"our_experiment",1,27,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.60059083633758,"2018_Jul_09_2208",59.9330124944272,"our_experiment",1,27,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45519731211662,"2018_Jul_09_2208",59.9330124944272,"our_experiment",1,27,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33509148035906,"2018_Jul_09_2208",59.9330124944272,"our_experiment",1,27,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.4848075359717,"2018_Jul_09_2208",59.9330124944272,"our_experiment",1,27,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47433063713275,"2018_Jul_09_2208",59.9330124944272,"our_experiment",1,27,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41496741588712,"2018_Jul_09_2208",59.9330124944272,"our_experiment",1,27,NA
"","",NA,NA,NA,NA,"space",4.02115826704493,NA,NA,"2018_Jul_09_2209",59.9330124944272,"our_experiment",1,28,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28587644271441,"2018_Jul_09_2209",59.9330124944272,"our_experiment",1,28,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04395794416256,"2018_Jul_09_2209",59.9330124944272,"our_experiment",1,28,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59709951157346,"2018_Jul_09_2209",59.9330124944272,"our_experiment",1,28,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45272205367237,"2018_Jul_09_2209",59.9330124944272,"our_experiment",1,28,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33525199671499,"2018_Jul_09_2209",59.9330124944272,"our_experiment",1,28,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.4862995606266,"2018_Jul_09_2209",59.9330124944272,"our_experiment",1,28,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47415849684514,"2018_Jul_09_2209",59.9330124944272,"our_experiment",1,28,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41737207487524,"2018_Jul_09_2209",59.9330124944272,"our_experiment",1,28,NA
"","",NA,NA,NA,NA,"space",4.09107117175484,NA,NA,"2018_Jul_09_2210",59.9330124944272,"our_experiment",1,29,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.28574803400077,"2018_Jul_09_2210",59.9330124944272,"our_experiment",1,29,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04195748229362,"2018_Jul_09_2210",59.9330124944272,"our_experiment",1,29,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.60093743787296,"2018_Jul_09_2210",59.9330124944272,"our_experiment",1,29,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.4508388892673,"2018_Jul_09_2210",59.9330124944272,"our_experiment",1,29,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33680334475674,"2018_Jul_09_2210",59.9330124944272,"our_experiment",1,29,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48252450260632,"2018_Jul_09_2210",59.9330124944272,"our_experiment",1,29,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.46969219468869,"2018_Jul_09_2210",59.9330124944272,"our_experiment",1,29,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41468574569225,"2018_Jul_09_2210",59.9330124944272,"our_experiment",1,29,NA
"","",NA,NA,NA,NA,"space",4.05512559577166,NA,NA,"2018_Jul_09_2144",59.9330124944272,"our_experiment",1,3,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.2827047905989,"2018_Jul_09_2144",59.9330124944272,"our_experiment",1,3,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04494425798953,"2018_Jul_09_2144",59.9330124944272,"our_experiment",1,3,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.6002652768448,"2018_Jul_09_2144",59.9330124944272,"our_experiment",1,3,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45229814390726,"2018_Jul_09_2144",59.9330124944272,"our_experiment",1,3,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33601536637135,"2018_Jul_09_2144",59.9330124944272,"our_experiment",1,3,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48357485436015,"2018_Jul_09_2144",59.9330124944272,"our_experiment",1,3,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47121524723917,"2018_Jul_09_2144",59.9330124944272,"our_experiment",1,3,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41813050464019,"2018_Jul_09_2144",59.9330124944272,"our_experiment",1,3,NA
"","",NA,NA,NA,NA,"space",4.07260390756002,NA,NA,"2018_Jul_09_2211",59.9330124944272,"our_experiment",1,30,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28535467259362,"2018_Jul_09_2211",59.9330124944272,"our_experiment",1,30,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04089786817692,"2018_Jul_09_2211",59.9330124944272,"our_experiment",1,30,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.60078653073981,"2018_Jul_09_2211",59.9330124944272,"our_experiment",1,30,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45414070924111,"2018_Jul_09_2211",59.9330124944272,"our_experiment",1,30,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33562020535171,"2018_Jul_09_2211",59.9330124944272,"our_experiment",1,30,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48569401630498,"2018_Jul_09_2211",59.9330124944272,"our_experiment",1,30,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47392829510756,"2018_Jul_09_2211",59.9330124944272,"our_experiment",1,30,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41622743246518,"2018_Jul_09_2211",59.9330124944272,"our_experiment",1,30,NA
"","",NA,NA,NA,NA,"space",4.14476162834993,NA,NA,"2018_Jul_09_2212",59.9330124944272,"our_experiment",1,31,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28351870135888,"2018_Jul_09_2212",59.9330124944272,"our_experiment",1,31,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04161321029253,"2018_Jul_09_2212",59.9330124944272,"our_experiment",1,31,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.60085430518948,"2018_Jul_09_2212",59.9330124944272,"our_experiment",1,31,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45468155740276,"2018_Jul_09_2212",59.9330124944272,"our_experiment",1,31,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33939098615833,"2018_Jul_09_2212",59.9330124944272,"our_experiment",1,31,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48362344952784,"2018_Jul_09_2212",59.9330124944272,"our_experiment",1,31,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47254740252607,"2018_Jul_09_2212",59.9330124944272,"our_experiment",1,31,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41721751766913,"2018_Jul_09_2212",59.9330124944272,"our_experiment",1,31,NA
"","",NA,NA,NA,NA,"space",4.08426845592635,NA,NA,"2018_Jul_09_2213",59.9330124944272,"our_experiment",1,32,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28287802279927,"2018_Jul_09_2213",59.9330124944272,"our_experiment",1,32,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04231355538517,"2018_Jul_09_2213",59.9330124944272,"our_experiment",1,32,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59882113048695,"2018_Jul_09_2213",59.9330124944272,"our_experiment",1,32,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45182799895518,"2018_Jul_09_2213",59.9330124944272,"our_experiment",1,32,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33832709344663,"2018_Jul_09_2213",59.9330124944272,"our_experiment",1,32,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48233949758708,"2018_Jul_09_2213",59.9330124944272,"our_experiment",1,32,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47418220407702,"2018_Jul_09_2213",59.9330124944272,"our_experiment",1,32,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41619746051505,"2018_Jul_09_2213",59.9330124944272,"our_experiment",1,32,NA
"","",NA,NA,NA,NA,"space",4.05413876305318,NA,NA,"2018_Jul_09_2214",59.9330124944272,"our_experiment",1,33,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28552077446096,"2018_Jul_09_2214",59.9330124944272,"our_experiment",1,33,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04250247945823,"2018_Jul_09_2214",59.9330124944272,"our_experiment",1,33,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59780456046052,"2018_Jul_09_2214",59.9330124944272,"our_experiment",1,33,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45159913597852,"2018_Jul_09_2214",59.9330124944272,"our_experiment",1,33,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33630187628157,"2018_Jul_09_2214",59.9330124944272,"our_experiment",1,33,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48607697587423,"2018_Jul_09_2214",59.9330124944272,"our_experiment",1,33,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47168215081654,"2018_Jul_09_2214",59.9330124944272,"our_experiment",1,33,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41601256131344,"2018_Jul_09_2214",59.9330124944272,"our_experiment",1,33,NA
"","",NA,NA,NA,NA,"space",4.04415688783618,NA,NA,"2018_Jul_09_2215",59.9330124944272,"our_experiment",1,34,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28396567923129,"2018_Jul_09_2215",59.9330124944272,"our_experiment",1,34,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.0414688904915,"2018_Jul_09_2215",59.9330124944272,"our_experiment",1,34,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.6012154395178,"2018_Jul_09_2215",59.9330124944272,"our_experiment",1,34,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45493997883573,"2018_Jul_09_2215",59.9330124944272,"our_experiment",1,34,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33716638268791,"2018_Jul_09_2215",59.9330124944272,"our_experiment",1,34,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48448656414263,"2018_Jul_09_2215",59.9330124944272,"our_experiment",1,34,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47029007135704,"2018_Jul_09_2215",59.9330124944272,"our_experiment",1,34,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,6,1.41370197733864,"2018_Jul_09_2215",59.9330124944272,"our_experiment",1,34,NA
"","",NA,NA,NA,NA,"space",4.15388827929495,NA,NA,"2018_Jul_09_2216",59.9330124944272,"our_experiment",1,35,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28404472104087,"2018_Jul_09_2216",59.9330124944272,"our_experiment",1,35,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04184272544831,"2018_Jul_09_2216",59.9330124944272,"our_experiment",1,35,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59829574699923,"2018_Jul_09_2216",59.9330124944272,"our_experiment",1,35,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45154567164145,"2018_Jul_09_2216",59.9330124944272,"our_experiment",1,35,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33670160634145,"2018_Jul_09_2216",59.9330124944272,"our_experiment",1,35,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48468694463111,"2018_Jul_09_2216",59.9330124944272,"our_experiment",1,35,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47336602040194,"2018_Jul_09_2216",59.9330124944272,"our_experiment",1,35,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41481828119792,"2018_Jul_09_2216",59.9330124944272,"our_experiment",1,35,NA
"","",NA,NA,NA,NA,"space",4.13093818489166,NA,NA,"2018_Jul_09_2217",59.9330124944272,"our_experiment",1,36,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28173891259842,"2018_Jul_09_2217",59.9330124944272,"our_experiment",1,36,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04382978546992,"2018_Jul_09_2217",59.9330124944272,"our_experiment",1,36,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,1,1.59870014121272,"2018_Jul_09_2217",59.9330124944272,"our_experiment",1,36,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45352040028311,"2018_Jul_09_2217",59.9330124944272,"our_experiment",1,36,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33840560589097,"2018_Jul_09_2217",59.9330124944272,"our_experiment",1,36,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.4842142529428,"2018_Jul_09_2217",59.9330124944272,"our_experiment",1,36,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.4742162595585,"2018_Jul_09_2217",59.9330124944272,"our_experiment",1,36,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41776362592205,"2018_Jul_09_2217",59.9330124944272,"our_experiment",1,36,NA
"","",NA,NA,NA,NA,"space",4.05066166058159,NA,NA,"2018_Jul_09_2218",59.9330124944272,"our_experiment",1,37,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28473437696956,"2018_Jul_09_2218",59.9330124944272,"our_experiment",1,37,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04525351879448,"2018_Jul_09_2218",59.9330124944272,"our_experiment",1,37,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59767672474273,"2018_Jul_09_2218",59.9330124944272,"our_experiment",1,37,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45507492003366,"2018_Jul_09_2218",59.9330124944272,"our_experiment",1,37,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33746720530242,"2018_Jul_09_2218",59.9330124944272,"our_experiment",1,37,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48549937525317,"2018_Jul_09_2218",59.9330124944272,"our_experiment",1,37,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47298613873459,"2018_Jul_09_2218",59.9330124944272,"our_experiment",1,37,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41385327091105,"2018_Jul_09_2218",59.9330124944272,"our_experiment",1,37,NA
"","",NA,NA,NA,NA,"space",4.04541864627624,NA,NA,"2018_Jul_09_2219",59.9330124944272,"our_experiment",1,38,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28336153837442,"2018_Jul_09_2219",59.9330124944272,"our_experiment",1,38,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04265683141835,"2018_Jul_09_2219",59.9330124944272,"our_experiment",1,38,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,2,1.59883396791257,"2018_Jul_09_2219",59.9330124944272,"our_experiment",1,38,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45080800051913,"2018_Jul_09_2219",59.9330124944272,"our_experiment",1,38,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33498479314968,"2018_Jul_09_2219",59.9330124944272,"our_experiment",1,38,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48471834296659,"2018_Jul_09_2219",59.9330124944272,"our_experiment",1,38,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47077338524461,"2018_Jul_09_2219",59.9330124944272,"our_experiment",1,38,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41770986593515,"2018_Jul_09_2219",59.9330124944272,"our_experiment",1,38,NA
"","",NA,NA,NA,NA,"space",4.02948526064052,NA,NA,"2018_Jul_09_2220",59.9330124944272,"our_experiment",1,39,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28309081360511,"2018_Jul_09_2220",59.9330124944272,"our_experiment",1,39,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04125355844907,"2018_Jul_09_2220",59.9330124944272,"our_experiment",1,39,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.597694042404,"2018_Jul_09_2220",59.9330124944272,"our_experiment",1,39,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45236657870337,"2018_Jul_09_2220",59.9330124944272,"our_experiment",1,39,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33895330378637,"2018_Jul_09_2220",59.9330124944272,"our_experiment",1,39,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48336951913312,"2018_Jul_09_2220",59.9330124944272,"our_experiment",1,39,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47410863678679,"2018_Jul_09_2220",59.9330124944272,"our_experiment",1,39,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41677163680121,"2018_Jul_09_2220",59.9330124944272,"our_experiment",1,39,NA
"","",NA,NA,NA,NA,"space",4.13141118173046,NA,NA,"2018_Jul_09_2145",59.9330124944272,"our_experiment",1,4,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28522676438242,"2018_Jul_09_2145",59.9330124944272,"our_experiment",1,4,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04118185110763,"2018_Jul_09_2145",59.9330124944272,"our_experiment",1,4,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59937326353006,"2018_Jul_09_2145",59.9330124944272,"our_experiment",1,4,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45126350328997,"2018_Jul_09_2145",59.9330124944272,"our_experiment",1,4,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33865602635816,"2018_Jul_09_2145",59.9330124944272,"our_experiment",1,4,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48590595589392,"2018_Jul_09_2145",59.9330124944272,"our_experiment",1,4,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47055104778633,"2018_Jul_09_2145",59.9330124944272,"our_experiment",1,4,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41587246403024,"2018_Jul_09_2145",59.9330124944272,"our_experiment",1,4,NA
"","",NA,NA,NA,NA,"space",4.0602639784457,NA,NA,"2018_Jul_09_2221",59.9330124944272,"our_experiment",1,40,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28481474710405,"2018_Jul_09_2221",59.9330124944272,"our_experiment",1,40,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04093769832701,"2018_Jul_09_2221",59.9330124944272,"our_experiment",1,40,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59795395080335,"2018_Jul_09_2221",59.9330124944272,"our_experiment",1,40,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45297228645198,"2018_Jul_09_2221",59.9330124944272,"our_experiment",1,40,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33610676130243,"2018_Jul_09_2221",59.9330124944272,"our_experiment",1,40,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48548710400946,"2018_Jul_09_2221",59.9330124944272,"our_experiment",1,40,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47020332270041,"2018_Jul_09_2221",59.9330124944272,"our_experiment",1,40,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41540444677956,"2018_Jul_09_2221",59.9330124944272,"our_experiment",1,40,NA
"","",NA,NA,NA,NA,"space",4.12210965290169,NA,NA,"2018_Jul_09_2222",59.9330124944272,"our_experiment",1,41,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28617993169725,"2018_Jul_09_2222",59.9330124944272,"our_experiment",1,41,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04078095106706,"2018_Jul_09_2222",59.9330124944272,"our_experiment",1,41,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59673947828971,"2018_Jul_09_2222",59.9330124944272,"our_experiment",1,41,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45368855570443,"2018_Jul_09_2222",59.9330124944272,"our_experiment",1,41,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33752727516927,"2018_Jul_09_2222",59.9330124944272,"our_experiment",1,41,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48512737031952,"2018_Jul_09_2222",59.9330124944272,"our_experiment",1,41,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.4713736906264,"2018_Jul_09_2222",59.9330124944272,"our_experiment",1,41,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41483041382395,"2018_Jul_09_2222",59.9330124944272,"our_experiment",1,41,NA
"","",NA,NA,NA,NA,"space",4.14596685676633,NA,NA,"2018_Jul_09_2223",59.9330124944272,"our_experiment",1,42,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28281081641912,"2018_Jul_09_2223",59.9330124944272,"our_experiment",1,42,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04489644160122,"2018_Jul_09_2223",59.9330124944272,"our_experiment",1,42,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59717707080208,"2018_Jul_09_2223",59.9330124944272,"our_experiment",1,42,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45171786931045,"2018_Jul_09_2223",59.9330124944272,"our_experiment",1,42,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.3354047026515,"2018_Jul_09_2223",59.9330124944272,"our_experiment",1,42,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,6,1.48460855013579,"2018_Jul_09_2223",59.9330124944272,"our_experiment",1,42,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47219589056671,"2018_Jul_09_2223",59.9330124944272,"our_experiment",1,42,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41754557200074,"2018_Jul_09_2223",59.9330124944272,"our_experiment",1,42,NA
"","",NA,NA,NA,NA,"space",4.0522848618283,NA,NA,"2018_Jul_09_2224",59.9330124944272,"our_experiment",1,43,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28417034307457,"2018_Jul_09_2224",59.9330124944272,"our_experiment",1,43,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04360871310569,"2018_Jul_09_2224",59.9330124944272,"our_experiment",1,43,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.5991502857849,"2018_Jul_09_2224",59.9330124944272,"our_experiment",1,43,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,2,1.45061337004751,"2018_Jul_09_2224",59.9330124944272,"our_experiment",1,43,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33821553648785,"2018_Jul_09_2224",59.9330124944272,"our_experiment",1,43,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48438617573008,"2018_Jul_09_2224",59.9330124944272,"our_experiment",1,43,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47139267986156,"2018_Jul_09_2224",59.9330124944272,"our_experiment",1,43,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41377870618999,"2018_Jul_09_2224",59.9330124944272,"our_experiment",1,43,NA
"","",NA,NA,NA,NA,"space",4.02928887380196,NA,NA,"2018_Jul_09_2225",59.9330124944272,"our_experiment",1,44,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28572424890883,"2018_Jul_09_2225",59.9330124944272,"our_experiment",1,44,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04198776868247,"2018_Jul_09_2225",59.9330124944272,"our_experiment",1,44,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59941379355788,"2018_Jul_09_2225",59.9330124944272,"our_experiment",1,44,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,2,1.45226316600405,"2018_Jul_09_2225",59.9330124944272,"our_experiment",1,44,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33844850589857,"2018_Jul_09_2225",59.9330124944272,"our_experiment",1,44,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.4837796003975,"2018_Jul_09_2225",59.9330124944272,"our_experiment",1,44,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47080056545101,"2018_Jul_09_2225",59.9330124944272,"our_experiment",1,44,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.4143417321153,"2018_Jul_09_2225",59.9330124944272,"our_experiment",1,44,NA
"","",NA,NA,NA,NA,"space",4.03116729772022,NA,NA,"2018_Jul_09_2226",59.9330124944272,"our_experiment",1,45,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28184489252381,"2018_Jul_09_2226",59.9330124944272,"our_experiment",1,45,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04063566395864,"2018_Jul_09_2226",59.9330124944272,"our_experiment",1,45,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,2,1.59814984096996,"2018_Jul_09_2226",59.9330124944272,"our_experiment",1,45,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45185720515586,"2018_Jul_09_2226",59.9330124944272,"our_experiment",1,45,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33469168143235,"2018_Jul_09_2226",59.9330124944272,"our_experiment",1,45,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48478271420598,"2018_Jul_09_2226",59.9330124944272,"our_experiment",1,45,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.4736569103729,"2018_Jul_09_2226",59.9330124944272,"our_experiment",1,45,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41464793420397,"2018_Jul_09_2226",59.9330124944272,"our_experiment",1,45,NA
"","",NA,NA,NA,NA,"space",4.10790353031578,NA,NA,"2018_Jul_09_2227",59.9330124944272,"our_experiment",1,46,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28277842105292,"2018_Jul_09_2227",59.9330124944272,"our_experiment",1,46,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04331326852478,"2018_Jul_09_2227",59.9330124944272,"our_experiment",1,46,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,2,1.59731663338467,"2018_Jul_09_2227",59.9330124944272,"our_experiment",1,46,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45443311812133,"2018_Jul_09_2227",59.9330124944272,"our_experiment",1,46,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33607379825115,"2018_Jul_09_2227",59.9330124944272,"our_experiment",1,46,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48498184786625,"2018_Jul_09_2227",59.9330124944272,"our_experiment",1,46,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.470737100292,"2018_Jul_09_2227",59.9330124944272,"our_experiment",1,46,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41409881343357,"2018_Jul_09_2227",59.9330124944272,"our_experiment",1,46,NA
"","",NA,NA,NA,NA,"space",4.07071043476435,NA,NA,"2018_Jul_09_2228",59.9330124944272,"our_experiment",1,47,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28365916995816,"2018_Jul_09_2228",59.9330124944272,"our_experiment",1,47,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04178756001964,"2018_Jul_09_2228",59.9330124944272,"our_experiment",1,47,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.60038821286745,"2018_Jul_09_2228",59.9330124944272,"our_experiment",1,47,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45132434986979,"2018_Jul_09_2228",59.9330124944272,"our_experiment",1,47,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33736016321778,"2018_Jul_09_2228",59.9330124944272,"our_experiment",1,47,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48617521442026,"2018_Jul_09_2228",59.9330124944272,"our_experiment",1,47,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.4725047851216,"2018_Jul_09_2228",59.9330124944272,"our_experiment",1,47,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41784221745133,"2018_Jul_09_2228",59.9330124944272,"our_experiment",1,47,NA
"","",NA,NA,NA,NA,"space",4.06160575934919,NA,NA,"2018_Jul_09_2229",59.9330124944272,"our_experiment",1,48,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28516404966526,"2018_Jul_09_2229",59.9330124944272,"our_experiment",1,48,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04535824827068,"2018_Jul_09_2229",59.9330124944272,"our_experiment",1,48,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.59759143399633,"2018_Jul_09_2229",59.9330124944272,"our_experiment",1,48,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45117285708189,"2018_Jul_09_2229",59.9330124944272,"our_experiment",1,48,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.3387163653601,"2018_Jul_09_2229",59.9330124944272,"our_experiment",1,48,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48385348650962,"2018_Jul_09_2229",59.9330124944272,"our_experiment",1,48,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47087975419089,"2018_Jul_09_2229",59.9330124944272,"our_experiment",1,48,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41530030971952,"2018_Jul_09_2229",59.9330124944272,"our_experiment",1,48,NA
"","",NA,NA,NA,NA,"space",4.15074118307693,NA,NA,"2018_Jul_09_2230",59.9330124944272,"our_experiment",1,49,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.2828391032055,"2018_Jul_09_2230",59.9330124944272,"our_experiment",1,49,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04402069904804,"2018_Jul_09_2230",59.9330124944272,"our_experiment",1,49,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59890830185078,"2018_Jul_09_2230",59.9330124944272,"our_experiment",1,49,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45315399748608,"2018_Jul_09_2230",59.9330124944272,"our_experiment",1,49,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.3377408693783,"2018_Jul_09_2230",59.9330124944272,"our_experiment",1,49,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48220520425104,"2018_Jul_09_2230",59.9330124944272,"our_experiment",1,49,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47147777323425,"2018_Jul_09_2230",59.9330124944272,"our_experiment",1,49,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41439488450028,"2018_Jul_09_2230",59.9330124944272,"our_experiment",1,49,NA
"","",NA,NA,NA,NA,"space",4.01054832162438,NA,NA,"2018_Jul_09_2146",59.9330124944272,"our_experiment",1,5,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28483363911137,"2018_Jul_09_2146",59.9330124944272,"our_experiment",1,5,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04372870500609,"2018_Jul_09_2146",59.9330124944272,"our_experiment",1,5,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,2,1.60118082756177,"2018_Jul_09_2146",59.9330124944272,"our_experiment",1,5,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45183190062605,"2018_Jul_09_2146",59.9330124944272,"our_experiment",1,5,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33492539314441,"2018_Jul_09_2146",59.9330124944272,"our_experiment",1,5,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48487559973672,"2018_Jul_09_2146",59.9330124944272,"our_experiment",1,5,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47083168092966,"2018_Jul_09_2146",59.9330124944272,"our_experiment",1,5,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.4152598810792,"2018_Jul_09_2146",59.9330124944272,"our_experiment",1,5,NA
"","",NA,NA,NA,NA,"space",4.14857584954521,NA,NA,"2018_Jul_09_2231",59.9330124944272,"our_experiment",1,50,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28232898189835,"2018_Jul_09_2231",59.9330124944272,"our_experiment",1,50,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04389846563004,"2018_Jul_09_2231",59.9330124944272,"our_experiment",1,50,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59739991676025,"2018_Jul_09_2231",59.9330124944272,"our_experiment",1,50,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45166184256412,"2018_Jul_09_2231",59.9330124944272,"our_experiment",1,50,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33584458095916,"2018_Jul_09_2231",59.9330124944272,"our_experiment",1,50,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48186170507036,"2018_Jul_09_2231",59.9330124944272,"our_experiment",1,50,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47081092649251,"2018_Jul_09_2231",59.9330124944272,"our_experiment",1,50,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41647462756373,"2018_Jul_09_2231",59.9330124944272,"our_experiment",1,50,NA
"","",NA,NA,NA,NA,"space",4.14372002550418,NA,NA,"2018_Jul_09_2232",59.9330124944272,"our_experiment",1,51,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28294236212596,"2018_Jul_09_2232",59.9330124944272,"our_experiment",1,51,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04364291890264,"2018_Jul_09_2232",59.9330124944272,"our_experiment",1,51,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.60117260315903,"2018_Jul_09_2232",59.9330124944272,"our_experiment",1,51,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45400550733469,"2018_Jul_09_2232",59.9330124944272,"our_experiment",1,51,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,1,1.33807790852003,"2018_Jul_09_2232",59.9330124944272,"our_experiment",1,51,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48245377742611,"2018_Jul_09_2232",59.9330124944272,"our_experiment",1,51,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.4710797035601,"2018_Jul_09_2232",59.9330124944272,"our_experiment",1,51,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41704799163453,"2018_Jul_09_2232",59.9330124944272,"our_experiment",1,51,NA
"","",NA,NA,NA,NA,"space",4.0454820825295,NA,NA,"2018_Jul_09_2233",59.9330124944272,"our_experiment",1,52,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28513674797378,"2018_Jul_09_2233",59.9330124944272,"our_experiment",1,52,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04199224722832,"2018_Jul_09_2233",59.9330124944272,"our_experiment",1,52,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.60004309150465,"2018_Jul_09_2233",59.9330124944272,"our_experiment",1,52,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45379864867218,"2018_Jul_09_2233",59.9330124944272,"our_experiment",1,52,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33486113156937,"2018_Jul_09_2233",59.9330124944272,"our_experiment",1,52,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48396115702242,"2018_Jul_09_2233",59.9330124944272,"our_experiment",1,52,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47068047016375,"2018_Jul_09_2233",59.9330124944272,"our_experiment",1,52,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41446552714109,"2018_Jul_09_2233",59.9330124944272,"our_experiment",1,52,NA
"","",NA,NA,NA,NA,"space",3.99949453425179,NA,NA,"2018_Jul_09_2234",59.9330124944272,"our_experiment",1,53,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28312979550771,"2018_Jul_09_2234",59.9330124944272,"our_experiment",1,53,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04267931290641,"2018_Jul_09_2234",59.9330124944272,"our_experiment",1,53,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.6007717013929,"2018_Jul_09_2234",59.9330124944272,"our_experiment",1,53,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45194019545987,"2018_Jul_09_2234",59.9330124944272,"our_experiment",1,53,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.339118945219,"2018_Jul_09_2234",59.9330124944272,"our_experiment",1,53,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,7,1.48363130360022,"2018_Jul_09_2234",59.9330124944272,"our_experiment",1,53,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47426336334869,"2018_Jul_09_2234",59.9330124944272,"our_experiment",1,53,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.4151459683273,"2018_Jul_09_2234",59.9330124944272,"our_experiment",1,53,NA
"","",NA,NA,NA,NA,"space",4.03312267156219,NA,NA,"2018_Jul_09_2235",59.9330124944272,"our_experiment",1,54,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28442381823249,"2018_Jul_09_2235",59.9330124944272,"our_experiment",1,54,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.0419708352901,"2018_Jul_09_2235",59.9330124944272,"our_experiment",1,54,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,1,1.59943925214149,"2018_Jul_09_2235",59.9330124944272,"our_experiment",1,54,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45500300967582,"2018_Jul_09_2235",59.9330124944272,"our_experiment",1,54,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33856759110838,"2018_Jul_09_2235",59.9330124944272,"our_experiment",1,54,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48620324076414,"2018_Jul_09_2235",59.9330124944272,"our_experiment",1,54,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47264292401448,"2018_Jul_09_2235",59.9330124944272,"our_experiment",1,54,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41536718574539,"2018_Jul_09_2235",59.9330124944272,"our_experiment",1,54,NA
"","",NA,NA,NA,NA,"space",4.0234293003084,NA,NA,"2018_Jul_09_2236",59.9330124944272,"our_experiment",1,55,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.2824375457868,"2018_Jul_09_2236",59.9330124944272,"our_experiment",1,55,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04146257181615,"2018_Jul_09_2236",59.9330124944272,"our_experiment",1,55,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,2,1.59724101033323,"2018_Jul_09_2236",59.9330124944272,"our_experiment",1,55,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,2,1.45535596043244,"2018_Jul_09_2236",59.9330124944272,"our_experiment",1,55,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33586872902997,"2018_Jul_09_2236",59.9330124944272,"our_experiment",1,55,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48176401885822,"2018_Jul_09_2236",59.9330124944272,"our_experiment",1,55,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.4721911710456,"2018_Jul_09_2236",59.9330124944272,"our_experiment",1,55,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41570815555491,"2018_Jul_09_2236",59.9330124944272,"our_experiment",1,55,NA
"","",NA,NA,NA,NA,"space",4.03605114257185,NA,NA,"2018_Jul_09_2237",59.9330124944272,"our_experiment",1,56,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28458626532853,"2018_Jul_09_2237",59.9330124944272,"our_experiment",1,56,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.0434782247413,"2018_Jul_09_2237",59.9330124944272,"our_experiment",1,56,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.60056273417547,"2018_Jul_09_2237",59.9330124944272,"our_experiment",1,56,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45203723082617,"2018_Jul_09_2237",59.9330124944272,"our_experiment",1,56,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33828159333579,"2018_Jul_09_2237",59.9330124944272,"our_experiment",1,56,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.4830007142961,"2018_Jul_09_2237",59.9330124944272,"our_experiment",1,56,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47383408276848,"2018_Jul_09_2237",59.9330124944272,"our_experiment",1,56,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41630085626617,"2018_Jul_09_2237",59.9330124944272,"our_experiment",1,56,NA
"","",NA,NA,NA,NA,"space",3.99690944703905,NA,NA,"2018_Jul_09_2238",59.9330124944272,"our_experiment",1,57,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28302491097413,"2018_Jul_09_2238",59.9330124944272,"our_experiment",1,57,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04325090800785,"2018_Jul_09_2238",59.9330124944272,"our_experiment",1,57,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59922268968709,"2018_Jul_09_2238",59.9330124944272,"our_experiment",1,57,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45473121965826,"2018_Jul_09_2238",59.9330124944272,"our_experiment",1,57,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33851271732077,"2018_Jul_09_2238",59.9330124944272,"our_experiment",1,57,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48438531789258,"2018_Jul_09_2238",59.9330124944272,"our_experiment",1,57,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47285238340273,"2018_Jul_09_2238",59.9330124944272,"our_experiment",1,57,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,6,1.41722237496413,"2018_Jul_09_2238",59.9330124944272,"our_experiment",1,57,NA
"","",NA,NA,NA,NA,"space",4.12912731455895,NA,NA,"2018_Jul_09_2239",59.9330124944272,"our_experiment",1,58,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28545139789991,"2018_Jul_09_2239",59.9330124944272,"our_experiment",1,58,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04330917740949,"2018_Jul_09_2239",59.9330124944272,"our_experiment",1,58,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.59760577870831,"2018_Jul_09_2239",59.9330124944272,"our_experiment",1,58,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45143674660921,"2018_Jul_09_2239",59.9330124944272,"our_experiment",1,58,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33504516442977,"2018_Jul_09_2239",59.9330124944272,"our_experiment",1,58,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48629067987055,"2018_Jul_09_2239",59.9330124944272,"our_experiment",1,58,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47343158287294,"2018_Jul_09_2239",59.9330124944272,"our_experiment",1,58,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41697015585564,"2018_Jul_09_2239",59.9330124944272,"our_experiment",1,58,NA
"","",NA,NA,NA,NA,"space",4.07786173136255,NA,NA,"2018_Jul_09_2240",59.9330124944272,"our_experiment",1,59,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28282088235728,"2018_Jul_09_2240",59.9330124944272,"our_experiment",1,59,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04142365953699,"2018_Jul_09_2240",59.9330124944272,"our_experiment",1,59,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.60069941325486,"2018_Jul_09_2240",59.9330124944272,"our_experiment",1,59,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45329102776609,"2018_Jul_09_2240",59.9330124944272,"our_experiment",1,59,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33677467740849,"2018_Jul_09_2240",59.9330124944272,"our_experiment",1,59,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48586918438189,"2018_Jul_09_2240",59.9330124944272,"our_experiment",1,59,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47248626056463,"2018_Jul_09_2240",59.9330124944272,"our_experiment",1,59,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41476217827909,"2018_Jul_09_2240",59.9330124944272,"our_experiment",1,59,NA
"","",NA,NA,NA,NA,"space",4.0419481783115,NA,NA,"2018_Jul_09_2147",59.9330124944272,"our_experiment",1,6,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28505487313569,"2018_Jul_09_2147",59.9330124944272,"our_experiment",1,6,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04318534381017,"2018_Jul_09_2147",59.9330124944272,"our_experiment",1,6,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.5974677633211,"2018_Jul_09_2147",59.9330124944272,"our_experiment",1,6,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45509792273305,"2018_Jul_09_2147",59.9330124944272,"our_experiment",1,6,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33880013977662,"2018_Jul_09_2147",59.9330124944272,"our_experiment",1,6,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48459982321113,"2018_Jul_09_2147",59.9330124944272,"our_experiment",1,6,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.46974187988378,"2018_Jul_09_2147",59.9330124944272,"our_experiment",1,6,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41816166312918,"2018_Jul_09_2147",59.9330124944272,"our_experiment",1,6,NA
"","",NA,NA,NA,NA,"space",4.13595517620584,NA,NA,"2018_Jul_09_2241",59.9330124944272,"our_experiment",1,60,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28637880420871,"2018_Jul_09_2241",59.9330124944272,"our_experiment",1,60,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04338491146863,"2018_Jul_09_2241",59.9330124944272,"our_experiment",1,60,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.60072948356159,"2018_Jul_09_2241",59.9330124944272,"our_experiment",1,60,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45467803712972,"2018_Jul_09_2241",59.9330124944272,"our_experiment",1,60,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33734876656979,"2018_Jul_09_2241",59.9330124944272,"our_experiment",1,60,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48636841164231,"2018_Jul_09_2241",59.9330124944272,"our_experiment",1,60,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47070482906848,"2018_Jul_09_2241",59.9330124944272,"our_experiment",1,60,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41785105482601,"2018_Jul_09_2241",59.9330124944272,"our_experiment",1,60,NA
"","",NA,NA,NA,NA,"space",4.01926833203541,NA,NA,"2018_Jul_09_2242",59.9330124944272,"our_experiment",1,61,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28614203893021,"2018_Jul_09_2242",59.9330124944272,"our_experiment",1,61,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,6,2.04419502219893,"2018_Jul_09_2242",59.9330124944272,"our_experiment",1,61,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.5992166303847,"2018_Jul_09_2242",59.9330124944272,"our_experiment",1,61,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45537656924017,"2018_Jul_09_2242",59.9330124944272,"our_experiment",1,61,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.3356178562507,"2018_Jul_09_2242",59.9330124944272,"our_experiment",1,61,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48372678120323,"2018_Jul_09_2242",59.9330124944272,"our_experiment",1,61,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47066360024698,"2018_Jul_09_2242",59.9330124944272,"our_experiment",1,61,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41393920106478,"2018_Jul_09_2242",59.9330124944272,"our_experiment",1,61,NA
"","",NA,NA,NA,NA,"space",4.00930921122609,NA,NA,"2018_Jul_09_2243",59.9330124944272,"our_experiment",1,62,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28421559519283,"2018_Jul_09_2243",59.9330124944272,"our_experiment",1,62,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04212406392321,"2018_Jul_09_2243",59.9330124944272,"our_experiment",1,62,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.5990943986252,"2018_Jul_09_2243",59.9330124944272,"our_experiment",1,62,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45285308547579,"2018_Jul_09_2243",59.9330124944272,"our_experiment",1,62,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33720741677433,"2018_Jul_09_2243",59.9330124944272,"our_experiment",1,62,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48325297428593,"2018_Jul_09_2243",59.9330124944272,"our_experiment",1,62,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.4740806911651,"2018_Jul_09_2243",59.9330124944272,"our_experiment",1,62,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41607921400629,"2018_Jul_09_2243",59.9330124944272,"our_experiment",1,62,NA
"","",NA,NA,NA,NA,"space",4.00356475843894,NA,NA,"2018_Jul_09_2244",59.9330124944272,"our_experiment",1,63,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28383537857682,"2018_Jul_09_2244",59.9330124944272,"our_experiment",1,63,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04241493262649,"2018_Jul_09_2244",59.9330124944272,"our_experiment",1,63,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59736363123655,"2018_Jul_09_2244",59.9330124944272,"our_experiment",1,63,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45229816396795,"2018_Jul_09_2244",59.9330124944272,"our_experiment",1,63,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33843273752816,"2018_Jul_09_2244",59.9330124944272,"our_experiment",1,63,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48392425432242,"2018_Jul_09_2244",59.9330124944272,"our_experiment",1,63,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47389989978224,"2018_Jul_09_2244",59.9330124944272,"our_experiment",1,63,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41635192484409,"2018_Jul_09_2244",59.9330124944272,"our_experiment",1,63,NA
"","",NA,NA,NA,NA,"space",4.04821240794303,NA,NA,"2018_Jul_09_2245",59.9330124944272,"our_experiment",1,64,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.285151877461,"2018_Jul_09_2245",59.9330124944272,"our_experiment",1,64,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04185172614045,"2018_Jul_09_2245",59.9330124944272,"our_experiment",1,64,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59776957320422,"2018_Jul_09_2245",59.9330124944272,"our_experiment",1,64,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45299160659686,"2018_Jul_09_2245",59.9330124944272,"our_experiment",1,64,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33926519073211,"2018_Jul_09_2245",59.9330124944272,"our_experiment",1,64,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48444950091019,"2018_Jul_09_2245",59.9330124944272,"our_experiment",1,64,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47196505242363,"2018_Jul_09_2245",59.9330124944272,"our_experiment",1,64,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41578924273662,"2018_Jul_09_2245",59.9330124944272,"our_experiment",1,64,NA
"","",NA,NA,NA,NA,"space",4.07977766406672,NA,NA,"2018_Jul_09_2246",59.9330124944272,"our_experiment",1,65,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28412911367193,"2018_Jul_09_2246",59.9330124944272,"our_experiment",1,65,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,6,2.04342065497935,"2018_Jul_09_2246",59.9330124944272,"our_experiment",1,65,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.59981227288246,"2018_Jul_09_2246",59.9330124944272,"our_experiment",1,65,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45287497108653,"2018_Jul_09_2246",59.9330124944272,"our_experiment",1,65,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33547166614868,"2018_Jul_09_2246",59.9330124944272,"our_experiment",1,65,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48509438829608,"2018_Jul_09_2246",59.9330124944272,"our_experiment",1,65,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47280593527742,"2018_Jul_09_2246",59.9330124944272,"our_experiment",1,65,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41721549125798,"2018_Jul_09_2246",59.9330124944272,"our_experiment",1,65,NA
"","",NA,NA,NA,NA,"space",4.15428838310888,NA,NA,"2018_Jul_09_2247",59.9330124944272,"our_experiment",1,66,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28217649656236,"2018_Jul_09_2247",59.9330124944272,"our_experiment",1,66,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,6,2.04125543284379,"2018_Jul_09_2247",59.9330124944272,"our_experiment",1,66,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59816931281164,"2018_Jul_09_2247",59.9330124944272,"our_experiment",1,66,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45328010525666,"2018_Jul_09_2247",59.9330124944272,"our_experiment",1,66,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33599800054096,"2018_Jul_09_2247",59.9330124944272,"our_experiment",1,66,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48382146977857,"2018_Jul_09_2247",59.9330124944272,"our_experiment",1,66,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.46978539510071,"2018_Jul_09_2247",59.9330124944272,"our_experiment",1,66,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,6,1.41450247727484,"2018_Jul_09_2247",59.9330124944272,"our_experiment",1,66,NA
"","",NA,NA,NA,NA,"space",4.15485847820053,NA,NA,"2018_Jul_09_2248",59.9330124944272,"our_experiment",1,67,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28183471999913,"2018_Jul_09_2248",59.9330124944272,"our_experiment",1,67,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04448361380175,"2018_Jul_09_2248",59.9330124944272,"our_experiment",1,67,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.5974084988188,"2018_Jul_09_2248",59.9330124944272,"our_experiment",1,67,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.4518735355407,"2018_Jul_09_2248",59.9330124944272,"our_experiment",1,67,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33563158400543,"2018_Jul_09_2248",59.9330124944272,"our_experiment",1,67,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,6,1.48572952191718,"2018_Jul_09_2248",59.9330124944272,"our_experiment",1,67,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47043662539013,"2018_Jul_09_2248",59.9330124944272,"our_experiment",1,67,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41604068607762,"2018_Jul_09_2248",59.9330124944272,"our_experiment",1,67,NA
"","",NA,NA,NA,NA,"space",4.13282132148,NA,NA,"2018_Jul_09_2249",59.9330124944272,"our_experiment",1,68,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28212739303,"2018_Jul_09_2249",59.9330124944272,"our_experiment",1,68,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,7,2.04183283682764,"2018_Jul_09_2249",59.9330124944272,"our_experiment",1,68,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.59932228183672,"2018_Jul_09_2249",59.9330124944272,"our_experiment",1,68,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45221047044285,"2018_Jul_09_2249",59.9330124944272,"our_experiment",1,68,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33726104058996,"2018_Jul_09_2249",59.9330124944272,"our_experiment",1,68,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.483422789713,"2018_Jul_09_2249",59.9330124944272,"our_experiment",1,68,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47233045845702,"2018_Jul_09_2249",59.9330124944272,"our_experiment",1,68,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41565471313037,"2018_Jul_09_2249",59.9330124944272,"our_experiment",1,68,NA
"","",NA,NA,NA,NA,"space",4.0887210001708,NA,NA,"2018_Jul_09_2250",59.9330124944272,"our_experiment",1,69,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28327040663063,"2018_Jul_09_2250",59.9330124944272,"our_experiment",1,69,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04358490407392,"2018_Jul_09_2250",59.9330124944272,"our_experiment",1,69,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59978799478821,"2018_Jul_09_2250",59.9330124944272,"our_experiment",1,69,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45260687581301,"2018_Jul_09_2250",59.9330124944272,"our_experiment",1,69,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33559401889034,"2018_Jul_09_2250",59.9330124944272,"our_experiment",1,69,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48366266825944,"2018_Jul_09_2250",59.9330124944272,"our_experiment",1,69,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47344440111071,"2018_Jul_09_2250",59.9330124944272,"our_experiment",1,69,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41378103056662,"2018_Jul_09_2250",59.9330124944272,"our_experiment",1,69,NA
"","",NA,NA,NA,NA,"space",4.10657962047855,NA,NA,"2018_Jul_09_2148",59.9330124944272,"our_experiment",1,7,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28456514899433,"2018_Jul_09_2148",59.9330124944272,"our_experiment",1,7,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04274225726984,"2018_Jul_09_2148",59.9330124944272,"our_experiment",1,7,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.59947742226124,"2018_Jul_09_2148",59.9330124944272,"our_experiment",1,7,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45125588781685,"2018_Jul_09_2148",59.9330124944272,"our_experiment",1,7,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33864449600205,"2018_Jul_09_2148",59.9330124944272,"our_experiment",1,7,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48574510718435,"2018_Jul_09_2148",59.9330124944272,"our_experiment",1,7,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47164219973125,"2018_Jul_09_2148",59.9330124944272,"our_experiment",1,7,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41631027587801,"2018_Jul_09_2148",59.9330124944272,"our_experiment",1,7,NA
"","",NA,NA,NA,NA,"space",4.01723840526069,NA,NA,"2018_Jul_09_2251",59.9330124944272,"our_experiment",1,70,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28502605790496,"2018_Jul_09_2251",59.9330124944272,"our_experiment",1,70,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04295275516473,"2018_Jul_09_2251",59.9330124944272,"our_experiment",1,70,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59732052634843,"2018_Jul_09_2251",59.9330124944272,"our_experiment",1,70,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,2,1.4522150041841,"2018_Jul_09_2251",59.9330124944272,"our_experiment",1,70,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33824793951847,"2018_Jul_09_2251",59.9330124944272,"our_experiment",1,70,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48372107014768,"2018_Jul_09_2251",59.9330124944272,"our_experiment",1,70,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.46970799996629,"2018_Jul_09_2251",59.9330124944272,"our_experiment",1,70,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41806390071884,"2018_Jul_09_2251",59.9330124944272,"our_experiment",1,70,NA
"","",NA,NA,NA,NA,"space",4.09424147521383,NA,NA,"2018_Jul_09_2252",59.9330124944272,"our_experiment",1,71,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28518858439326,"2018_Jul_09_2252",59.9330124944272,"our_experiment",1,71,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04362261551581,"2018_Jul_09_2252",59.9330124944272,"our_experiment",1,71,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59955739289522,"2018_Jul_09_2252",59.9330124944272,"our_experiment",1,71,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45207237059511,"2018_Jul_09_2252",59.9330124944272,"our_experiment",1,71,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33636756807528,"2018_Jul_09_2252",59.9330124944272,"our_experiment",1,71,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48185801817179,"2018_Jul_09_2252",59.9330124944272,"our_experiment",1,71,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.46987886828892,"2018_Jul_09_2252",59.9330124944272,"our_experiment",1,71,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41466316613369,"2018_Jul_09_2252",59.9330124944272,"our_experiment",1,71,NA
"","",NA,NA,NA,NA,"space",4.05789940779565,NA,NA,"2018_Jul_09_2253",59.9330124944272,"our_experiment",1,72,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28193164174035,"2018_Jul_09_2253",59.9330124944272,"our_experiment",1,72,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04382112898342,"2018_Jul_09_2253",59.9330124944272,"our_experiment",1,72,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59847921900526,"2018_Jul_09_2253",59.9330124944272,"our_experiment",1,72,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.4510882009238,"2018_Jul_09_2253",59.9330124944272,"our_experiment",1,72,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33647379330881,"2018_Jul_09_2253",59.9330124944272,"our_experiment",1,72,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.4849346270144,"2018_Jul_09_2253",59.9330124944272,"our_experiment",1,72,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47370652808025,"2018_Jul_09_2253",59.9330124944272,"our_experiment",1,72,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41589839184731,"2018_Jul_09_2253",59.9330124944272,"our_experiment",1,72,NA
"","",NA,NA,NA,NA,"space",4.13324385407465,NA,NA,"2018_Jul_09_2254",59.9330124944272,"our_experiment",1,73,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28558056306913,"2018_Jul_09_2254",59.9330124944272,"our_experiment",1,73,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04213077228889,"2018_Jul_09_2254",59.9330124944272,"our_experiment",1,73,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,2,1.60133730379231,"2018_Jul_09_2254",59.9330124944272,"our_experiment",1,73,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45330363105386,"2018_Jul_09_2254",59.9330124944272,"our_experiment",1,73,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33517765804045,"2018_Jul_09_2254",59.9330124944272,"our_experiment",1,73,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48344659843966,"2018_Jul_09_2254",59.9330124944272,"our_experiment",1,73,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47300166822076,"2018_Jul_09_2254",59.9330124944272,"our_experiment",1,73,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41562135146819,"2018_Jul_09_2254",59.9330124944272,"our_experiment",1,73,NA
"","",NA,NA,NA,NA,"space",4.04859607245474,NA,NA,"2018_Jul_09_2255",59.9330124944272,"our_experiment",1,74,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28311674477384,"2018_Jul_09_2255",59.9330124944272,"our_experiment",1,74,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,7,2.04457798917443,"2018_Jul_09_2255",59.9330124944272,"our_experiment",1,74,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59850302501395,"2018_Jul_09_2255",59.9330124944272,"our_experiment",1,74,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45137685013711,"2018_Jul_09_2255",59.9330124944272,"our_experiment",1,74,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33682575583011,"2018_Jul_09_2255",59.9330124944272,"our_experiment",1,74,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48366685139462,"2018_Jul_09_2255",59.9330124944272,"our_experiment",1,74,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47101150931902,"2018_Jul_09_2255",59.9330124944272,"our_experiment",1,74,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,6,1.41540549205318,"2018_Jul_09_2255",59.9330124944272,"our_experiment",1,74,NA
"","",NA,NA,NA,NA,"space",4.03372329051761,NA,NA,"2018_Jul_09_2256",59.9330124944272,"our_experiment",1,75,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28398920566887,"2018_Jul_09_2256",59.9330124944272,"our_experiment",1,75,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04279103362523,"2018_Jul_09_2256",59.9330124944272,"our_experiment",1,75,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59918838311508,"2018_Jul_09_2256",59.9330124944272,"our_experiment",1,75,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45521308813691,"2018_Jul_09_2256",59.9330124944272,"our_experiment",1,75,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.3347417096965,"2018_Jul_09_2256",59.9330124944272,"our_experiment",1,75,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48621863481663,"2018_Jul_09_2256",59.9330124944272,"our_experiment",1,75,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47241449191011,"2018_Jul_09_2256",59.9330124944272,"our_experiment",1,75,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41811745680422,"2018_Jul_09_2256",59.9330124944272,"our_experiment",1,75,NA
"","",NA,NA,NA,NA,"space",4.12456682645956,NA,NA,"2018_Jul_09_2257",59.9330124944272,"our_experiment",1,76,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28587676665932,"2018_Jul_09_2257",59.9330124944272,"our_experiment",1,76,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,6,2.04425801024661,"2018_Jul_09_2257",59.9330124944272,"our_experiment",1,76,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59676051851735,"2018_Jul_09_2257",59.9330124944272,"our_experiment",1,76,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45184620456733,"2018_Jul_09_2257",59.9330124944272,"our_experiment",1,76,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33891375233904,"2018_Jul_09_2257",59.9330124944272,"our_experiment",1,76,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48426675537601,"2018_Jul_09_2257",59.9330124944272,"our_experiment",1,76,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47229764940366,"2018_Jul_09_2257",59.9330124944272,"our_experiment",1,76,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41387171771862,"2018_Jul_09_2257",59.9330124944272,"our_experiment",1,76,NA
"","",NA,NA,NA,NA,"space",4.09691278611331,NA,NA,"2018_Jul_09_2258",59.9330124944272,"our_experiment",1,77,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.28386453244202,"2018_Jul_09_2258",59.9330124944272,"our_experiment",1,77,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04216656151228,"2018_Jul_09_2258",59.9330124944272,"our_experiment",1,77,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59807152189612,"2018_Jul_09_2258",59.9330124944272,"our_experiment",1,77,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45325599407405,"2018_Jul_09_2258",59.9330124944272,"our_experiment",1,77,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33797846293189,"2018_Jul_09_2258",59.9330124944272,"our_experiment",1,77,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48442867888808,"2018_Jul_09_2258",59.9330124944272,"our_experiment",1,77,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.4717382427685,"2018_Jul_09_2258",59.9330124944272,"our_experiment",1,77,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41581673421226,"2018_Jul_09_2258",59.9330124944272,"our_experiment",1,77,NA
"","",NA,NA,NA,NA,"space",4.05804172628654,NA,NA,"2018_Jul_09_2259",59.9330124944272,"our_experiment",1,78,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28561185373627,"2018_Jul_09_2259",59.9330124944272,"our_experiment",1,78,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,7,2.04336516296379,"2018_Jul_09_2259",59.9330124944272,"our_experiment",1,78,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.60092686461508,"2018_Jul_09_2259",59.9330124944272,"our_experiment",1,78,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.450846377692,"2018_Jul_09_2259",59.9330124944272,"our_experiment",1,78,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33803188191615,"2018_Jul_09_2259",59.9330124944272,"our_experiment",1,78,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48464343524352,"2018_Jul_09_2259",59.9330124944272,"our_experiment",1,78,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47412797518186,"2018_Jul_09_2259",59.9330124944272,"our_experiment",1,78,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41564783879407,"2018_Jul_09_2259",59.9330124944272,"our_experiment",1,78,NA
"","",NA,NA,NA,NA,"space",4.10205670178833,NA,NA,"2018_Jul_09_2300",59.9330124944272,"our_experiment",1,79,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,1,4.28364230228662,"2018_Jul_09_2300",59.9330124944272,"our_experiment",1,79,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04395482289381,"2018_Jul_09_2300",59.9330124944272,"our_experiment",1,79,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59842422612421,"2018_Jul_09_2300",59.9330124944272,"our_experiment",1,79,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45425811419785,"2018_Jul_09_2300",59.9330124944272,"our_experiment",1,79,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33617794882618,"2018_Jul_09_2300",59.9330124944272,"our_experiment",1,79,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,7,1.48281879768968,"2018_Jul_09_2300",59.9330124944272,"our_experiment",1,79,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47402531053163,"2018_Jul_09_2300",59.9330124944272,"our_experiment",1,79,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41747423601672,"2018_Jul_09_2300",59.9330124944272,"our_experiment",1,79,NA
"","",NA,NA,NA,NA,"space",4.1561590604234,NA,NA,"2018_Jul_09_2149",59.9330124944272,"our_experiment",1,8,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28185109193921,"2018_Jul_09_2149",59.9330124944272,"our_experiment",1,8,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04357057612017,"2018_Jul_09_2149",59.9330124944272,"our_experiment",1,8,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.59765075345822,"2018_Jul_09_2149",59.9330124944272,"our_experiment",1,8,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,1,1.45467743853219,"2018_Jul_09_2149",59.9330124944272,"our_experiment",1,8,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33831306834221,"2018_Jul_09_2149",59.9330124944272,"our_experiment",1,8,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.4843221926935,"2018_Jul_09_2149",59.9330124944272,"our_experiment",1,8,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47071625601314,"2018_Jul_09_2149",59.9330124944272,"our_experiment",1,8,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41627687010355,"2018_Jul_09_2149",59.9330124944272,"our_experiment",1,8,NA
"","",NA,NA,NA,NA,"space",4.12950341319783,NA,NA,"2018_Jul_09_2301",59.9330124944272,"our_experiment",1,80,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28373504066803,"2018_Jul_09_2301",59.9330124944272,"our_experiment",1,80,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.0410996644292,"2018_Jul_09_2301",59.9330124944272,"our_experiment",1,80,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59780323446132,"2018_Jul_09_2301",59.9330124944272,"our_experiment",1,80,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45414809111953,"2018_Jul_09_2301",59.9330124944272,"our_experiment",1,80,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33865488600358,"2018_Jul_09_2301",59.9330124944272,"our_experiment",1,80,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.4851822227668,"2018_Jul_09_2301",59.9330124944272,"our_experiment",1,80,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.46993813708946,"2018_Jul_09_2301",59.9330124944272,"our_experiment",1,80,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41579447720274,"2018_Jul_09_2301",59.9330124944272,"our_experiment",1,80,NA
"","",NA,NA,NA,NA,"space",4.10398479273791,NA,NA,"2018_Jul_09_2302",59.9330124944272,"our_experiment",1,81,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,1,4.2820380898118,"2018_Jul_09_2302",59.9330124944272,"our_experiment",1,81,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,7,2.04172766906619,"2018_Jul_09_2302",59.9330124944272,"our_experiment",1,81,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.60034311806075,"2018_Jul_09_2302",59.9330124944272,"our_experiment",1,81,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45324602523297,"2018_Jul_09_2302",59.9330124944272,"our_experiment",1,81,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33665204123557,"2018_Jul_09_2302",59.9330124944272,"our_experiment",1,81,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48522568391711,"2018_Jul_09_2302",59.9330124944272,"our_experiment",1,81,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47032578964159,"2018_Jul_09_2302",59.9330124944272,"our_experiment",1,81,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41736240902878,"2018_Jul_09_2302",59.9330124944272,"our_experiment",1,81,NA
"","",NA,NA,NA,NA,"space",4.1245328774011,NA,NA,"2018_Jul_09_2303",59.9330124944272,"our_experiment",1,82,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28533319562525,"2018_Jul_09_2303",59.9330124944272,"our_experiment",1,82,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04412676207498,"2018_Jul_09_2303",59.9330124944272,"our_experiment",1,82,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59804248871915,"2018_Jul_09_2303",59.9330124944272,"our_experiment",1,82,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45240096246265,"2018_Jul_09_2303",59.9330124944272,"our_experiment",1,82,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33682566116936,"2018_Jul_09_2303",59.9330124944272,"our_experiment",1,82,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48218632064573,"2018_Jul_09_2303",59.9330124944272,"our_experiment",1,82,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47255333927833,"2018_Jul_09_2303",59.9330124944272,"our_experiment",1,82,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41821976450719,"2018_Jul_09_2303",59.9330124944272,"our_experiment",1,82,NA
"","",NA,NA,NA,NA,"space",4.08942699220607,NA,NA,"2018_Jul_09_2304",59.9330124944272,"our_experiment",1,83,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28237752162032,"2018_Jul_09_2304",59.9330124944272,"our_experiment",1,83,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04393421555907,"2018_Jul_09_2304",59.9330124944272,"our_experiment",1,83,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.60057879010998,"2018_Jul_09_2304",59.9330124944272,"our_experiment",1,83,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45448590154387,"2018_Jul_09_2304",59.9330124944272,"our_experiment",1,83,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33512742958516,"2018_Jul_09_2304",59.9330124944272,"our_experiment",1,83,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48474910969436,"2018_Jul_09_2304",59.9330124944272,"our_experiment",1,83,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47088901825137,"2018_Jul_09_2304",59.9330124944272,"our_experiment",1,83,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41560935572758,"2018_Jul_09_2304",59.9330124944272,"our_experiment",1,83,NA
"","",NA,NA,NA,NA,"space",4.15196692006959,NA,NA,"2018_Jul_09_2305",59.9330124944272,"our_experiment",1,84,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28587741984427,"2018_Jul_09_2305",59.9330124944272,"our_experiment",1,84,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04528151725344,"2018_Jul_09_2305",59.9330124944272,"our_experiment",1,84,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.59954965691492,"2018_Jul_09_2305",59.9330124944272,"our_experiment",1,84,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.4544249214761,"2018_Jul_09_2305",59.9330124944272,"our_experiment",1,84,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,1,1.33828515559323,"2018_Jul_09_2305",59.9330124944272,"our_experiment",1,84,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48489156812951,"2018_Jul_09_2305",59.9330124944272,"our_experiment",1,84,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47358612149693,"2018_Jul_09_2305",59.9330124944272,"our_experiment",1,84,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41639086803235,"2018_Jul_09_2305",59.9330124944272,"our_experiment",1,84,NA
"","",NA,NA,NA,NA,"space",4.14069361081874,NA,NA,"2018_Jul_09_2306",59.9330124944272,"our_experiment",1,85,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28519811132923,"2018_Jul_09_2306",59.9330124944272,"our_experiment",1,85,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04325083640516,"2018_Jul_09_2306",59.9330124944272,"our_experiment",1,85,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.60069589523375,"2018_Jul_09_2306",59.9330124944272,"our_experiment",1,85,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45515065644085,"2018_Jul_09_2306",59.9330124944272,"our_experiment",1,85,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33923003345169,"2018_Jul_09_2306",59.9330124944272,"our_experiment",1,85,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48419625099748,"2018_Jul_09_2306",59.9330124944272,"our_experiment",1,85,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47403205037303,"2018_Jul_09_2306",59.9330124944272,"our_experiment",1,85,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41677724677548,"2018_Jul_09_2306",59.9330124944272,"our_experiment",1,85,NA
"","",NA,NA,NA,NA,"space",4.06079387367888,NA,NA,"2018_Jul_09_2307",59.9330124944272,"our_experiment",1,86,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28209925600477,"2018_Jul_09_2307",59.9330124944272,"our_experiment",1,86,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04108425050043,"2018_Jul_09_2307",59.9330124944272,"our_experiment",1,86,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.59848118684366,"2018_Jul_09_2307",59.9330124944272,"our_experiment",1,86,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45338633038178,"2018_Jul_09_2307",59.9330124944272,"our_experiment",1,86,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33836828184165,"2018_Jul_09_2307",59.9330124944272,"our_experiment",1,86,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48303764081746,"2018_Jul_09_2307",59.9330124944272,"our_experiment",1,86,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47112611282691,"2018_Jul_09_2307",59.9330124944272,"our_experiment",1,86,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41537624028735,"2018_Jul_09_2307",59.9330124944272,"our_experiment",1,86,NA
"","",NA,NA,NA,NA,"space",4.09730075024462,NA,NA,"2018_Jul_09_2308",59.9330124944272,"our_experiment",1,87,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28269798939526,"2018_Jul_09_2308",59.9330124944272,"our_experiment",1,87,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04370473763347,"2018_Jul_09_2308",59.9330124944272,"our_experiment",1,87,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59867696159817,"2018_Jul_09_2308",59.9330124944272,"our_experiment",1,87,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45435885694474,"2018_Jul_09_2308",59.9330124944272,"our_experiment",1,87,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33821708873026,"2018_Jul_09_2308",59.9330124944272,"our_experiment",1,87,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48483584078923,"2018_Jul_09_2308",59.9330124944272,"our_experiment",1,87,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47234726747647,"2018_Jul_09_2308",59.9330124944272,"our_experiment",1,87,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,6,1.41409889116287,"2018_Jul_09_2308",59.9330124944272,"our_experiment",1,87,NA
"","",NA,NA,NA,NA,"space",4.02891858918717,NA,NA,"2018_Jul_09_2309",59.9330124944272,"our_experiment",1,88,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28435149780735,"2018_Jul_09_2309",59.9330124944272,"our_experiment",1,88,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.0431119945243,"2018_Jul_09_2309",59.9330124944272,"our_experiment",1,88,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59931337425411,"2018_Jul_09_2309",59.9330124944272,"our_experiment",1,88,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45264324539155,"2018_Jul_09_2309",59.9330124944272,"our_experiment",1,88,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33469825080708,"2018_Jul_09_2309",59.9330124944272,"our_experiment",1,88,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48236416109018,"2018_Jul_09_2309",59.9330124944272,"our_experiment",1,88,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47424483680911,"2018_Jul_09_2309",59.9330124944272,"our_experiment",1,88,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41650149306878,"2018_Jul_09_2309",59.9330124944272,"our_experiment",1,88,NA
"","",NA,NA,NA,NA,"space",4.15412897823753,NA,NA,"2018_Jul_09_2310",59.9330124944272,"our_experiment",1,89,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28568476894125,"2018_Jul_09_2310",59.9330124944272,"our_experiment",1,89,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,6,2.04230904539824,"2018_Jul_09_2310",59.9330124944272,"our_experiment",1,89,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.60136700311601,"2018_Jul_09_2310",59.9330124944272,"our_experiment",1,89,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45331062777378,"2018_Jul_09_2310",59.9330124944272,"our_experiment",1,89,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33783794137798,"2018_Jul_09_2310",59.9330124944272,"our_experiment",1,89,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48277749017216,"2018_Jul_09_2310",59.9330124944272,"our_experiment",1,89,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47106958734393,"2018_Jul_09_2310",59.9330124944272,"our_experiment",1,89,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41726219459325,"2018_Jul_09_2310",59.9330124944272,"our_experiment",1,89,NA
"","",NA,NA,NA,NA,"space",4.07556510290182,NA,NA,"2018_Jul_09_2150",59.9330124944272,"our_experiment",1,9,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28481974668689,"2018_Jul_09_2150",59.9330124944272,"our_experiment",1,9,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04469723874554,"2018_Jul_09_2150",59.9330124944272,"our_experiment",1,9,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.60114273011647,"2018_Jul_09_2150",59.9330124944272,"our_experiment",1,9,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45449074885324,"2018_Jul_09_2150",59.9330124944272,"our_experiment",1,9,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33805945899338,"2018_Jul_09_2150",59.9330124944272,"our_experiment",1,9,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48507629575357,"2018_Jul_09_2150",59.9330124944272,"our_experiment",1,9,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47372149138674,"2018_Jul_09_2150",59.9330124944272,"our_experiment",1,9,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41382774175853,"2018_Jul_09_2150",59.9330124944272,"our_experiment",1,9,NA
"","",NA,NA,NA,NA,"space",4.09964624799239,NA,NA,"2018_Jul_09_2311",59.9330124944272,"our_experiment",1,90,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.28459035399742,"2018_Jul_09_2311",59.9330124944272,"our_experiment",1,90,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04405239646435,"2018_Jul_09_2311",59.9330124944272,"our_experiment",1,90,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,2,1.60124144316092,"2018_Jul_09_2311",59.9330124944272,"our_experiment",1,90,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45338655456416,"2018_Jul_09_2311",59.9330124944272,"our_experiment",1,90,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33615003312677,"2018_Jul_09_2311",59.9330124944272,"our_experiment",1,90,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48606345797889,"2018_Jul_09_2311",59.9330124944272,"our_experiment",1,90,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47005537345372,"2018_Jul_09_2311",59.9330124944272,"our_experiment",1,90,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,6,1.41380514930412,"2018_Jul_09_2311",59.9330124944272,"our_experiment",1,90,NA
"","",NA,NA,NA,NA,"space",3.99670055256473,NA,NA,"2018_Jul_09_2312",59.9330124944272,"our_experiment",1,91,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28398844024912,"2018_Jul_09_2312",59.9330124944272,"our_experiment",1,91,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04233134236708,"2018_Jul_09_2312",59.9330124944272,"our_experiment",1,91,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59699857808463,"2018_Jul_09_2312",59.9330124944272,"our_experiment",1,91,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45303503272198,"2018_Jul_09_2312",59.9330124944272,"our_experiment",1,91,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.3352094874002,"2018_Jul_09_2312",59.9330124944272,"our_experiment",1,91,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48343368019797,"2018_Jul_09_2312",59.9330124944272,"our_experiment",1,91,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47330577906147,"2018_Jul_09_2312",59.9330124944272,"our_experiment",1,91,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,6,1.41836053290591,"2018_Jul_09_2312",59.9330124944272,"our_experiment",1,91,NA
"","",NA,NA,NA,NA,"space",4.04084788058086,NA,NA,"2018_Jul_09_2313",59.9330124944272,"our_experiment",1,92,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28335280592889,"2018_Jul_09_2313",59.9330124944272,"our_experiment",1,92,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04417876218855,"2018_Jul_09_2313",59.9330124944272,"our_experiment",1,92,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,2,1.59714692155793,"2018_Jul_09_2313",59.9330124944272,"our_experiment",1,92,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45508127486072,"2018_Jul_09_2313",59.9330124944272,"our_experiment",1,92,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33794833361767,"2018_Jul_09_2313",59.9330124944272,"our_experiment",1,92,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48461234413274,"2018_Jul_09_2313",59.9330124944272,"our_experiment",1,92,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47181072867252,"2018_Jul_09_2313",59.9330124944272,"our_experiment",1,92,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41370234300643,"2018_Jul_09_2313",59.9330124944272,"our_experiment",1,92,NA
"","",NA,NA,NA,NA,"space",4.1487208601336,NA,NA,"2018_Jul_09_2314",59.9330124944272,"our_experiment",1,93,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28247275586985,"2018_Jul_09_2314",59.9330124944272,"our_experiment",1,93,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04512951480448,"2018_Jul_09_2314",59.9330124944272,"our_experiment",1,93,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59797410170436,"2018_Jul_09_2314",59.9330124944272,"our_experiment",1,93,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45444383520596,"2018_Jul_09_2314",59.9330124944272,"our_experiment",1,93,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33920531103276,"2018_Jul_09_2314",59.9330124944272,"our_experiment",1,93,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48624290792868,"2018_Jul_09_2314",59.9330124944272,"our_experiment",1,93,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47079928068966,"2018_Jul_09_2314",59.9330124944272,"our_experiment",1,93,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,6,1.4171977260042,"2018_Jul_09_2314",59.9330124944272,"our_experiment",1,93,NA
"","",NA,NA,NA,NA,"space",4.11952704983769,NA,NA,"2018_Jul_09_2315",59.9330124944272,"our_experiment",1,94,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28182047064416,"2018_Jul_09_2315",59.9330124944272,"our_experiment",1,94,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.0432190184515,"2018_Jul_09_2315",59.9330124944272,"our_experiment",1,94,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59815264805481,"2018_Jul_09_2315",59.9330124944272,"our_experiment",1,94,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45390494730547,"2018_Jul_09_2315",59.9330124944272,"our_experiment",1,94,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,1,1.33806383048445,"2018_Jul_09_2315",59.9330124944272,"our_experiment",1,94,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48299372160956,"2018_Jul_09_2315",59.9330124944272,"our_experiment",1,94,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47030723642074,"2018_Jul_09_2315",59.9330124944272,"our_experiment",1,94,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41823602162972,"2018_Jul_09_2315",59.9330124944272,"our_experiment",1,94,NA
"","",NA,NA,NA,NA,"space",4.0734018035326,NA,NA,"2018_Jul_09_2316",59.9330124944272,"our_experiment",1,95,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28477411936112,"2018_Jul_09_2316",59.9330124944272,"our_experiment",1,95,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04319911275357,"2018_Jul_09_2316",59.9330124944272,"our_experiment",1,95,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59699633544162,"2018_Jul_09_2316",59.9330124944272,"our_experiment",1,95,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45195253191479,"2018_Jul_09_2316",59.9330124944272,"our_experiment",1,95,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.3386153983593,"2018_Jul_09_2316",59.9330124944272,"our_experiment",1,95,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.485118584764,"2018_Jul_09_2316",59.9330124944272,"our_experiment",1,95,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47004977616407,"2018_Jul_09_2316",59.9330124944272,"our_experiment",1,95,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41544831408896,"2018_Jul_09_2316",59.9330124944272,"our_experiment",1,95,NA
"","",NA,NA,NA,NA,"space",4.1165621288422,NA,NA,"2018_Jul_09_2317",59.9330124944272,"our_experiment",1,96,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28613662254661,"2018_Jul_09_2317",59.9330124944272,"our_experiment",1,96,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04259239948727,"2018_Jul_09_2317",59.9330124944272,"our_experiment",1,96,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59742553550638,"2018_Jul_09_2317",59.9330124944272,"our_experiment",1,96,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45175727585591,"2018_Jul_09_2317",59.9330124944272,"our_experiment",1,96,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,1,1.33768682226203,"2018_Jul_09_2317",59.9330124944272,"our_experiment",1,96,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.4858777223371,"2018_Jul_09_2317",59.9330124944272,"our_experiment",1,96,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47052992193699,"2018_Jul_09_2317",59.9330124944272,"our_experiment",1,96,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41567325816825,"2018_Jul_09_2317",59.9330124944272,"our_experiment",1,96,NA
"","",NA,NA,NA,NA,"space",4.00461058069332,NA,NA,"2018_Jul_09_2318",59.9330124944272,"our_experiment",1,97,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28340962837264,"2018_Jul_09_2318",59.9330124944272,"our_experiment",1,97,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04512690053918,"2018_Jul_09_2318",59.9330124944272,"our_experiment",1,97,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59950857206993,"2018_Jul_09_2318",59.9330124944272,"our_experiment",1,97,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45216136117056,"2018_Jul_09_2318",59.9330124944272,"our_experiment",1,97,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33877872083783,"2018_Jul_09_2318",59.9330124944272,"our_experiment",1,97,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48319145893194,"2018_Jul_09_2318",59.9330124944272,"our_experiment",1,97,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47231040046997,"2018_Jul_09_2318",59.9330124944272,"our_experiment",1,97,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41462426304333,"2018_Jul_09_2318",59.9330124944272,"our_experiment",1,97,NA
"","",NA,NA,NA,NA,"space",4.07901269487074,NA,NA,"2018_Jul_09_2319",59.9330124944272,"our_experiment",1,98,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28611311662458,"2018_Jul_09_2319",59.9330124944272,"our_experiment",1,98,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04441860692017,"2018_Jul_09_2319",59.9330124944272,"our_experiment",1,98,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59774105727449,"2018_Jul_09_2319",59.9330124944272,"our_experiment",1,98,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45365028737225,"2018_Jul_09_2319",59.9330124944272,"our_experiment",1,98,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33794979108758,"2018_Jul_09_2319",59.9330124944272,"our_experiment",1,98,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48432788352743,"2018_Jul_09_2319",59.9330124944272,"our_experiment",1,98,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47368825293742,"2018_Jul_09_2319",59.9330124944272,"our_experiment",1,98,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,7,1.41428511139266,"2018_Jul_09_2319",59.9330124944272,"our_experiment",1,98,NA
"","",NA,NA,NA,NA,"space",4.00636995914756,NA,NA,"2018_Jul_09_2320",59.9330124944272,"our_experiment",1,99,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28473274514042,"2018_Jul_09_2320",59.9330124944272,"our_experiment",1,99,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04134017186314,"2018_Jul_09_2320",59.9330124944272,"our_experiment",1,99,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59787799137272,"2018_Jul_09_2320",59.9330124944272,"our_experiment",1,99,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45498190195151,"2018_Jul_09_2320",59.9330124944272,"our_experiment",1,99,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33599730557725,"2018_Jul_09_2320",59.9330124944272,"our_experiment",1,99,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.4818905532822,"2018_Jul_09_2320",59.9330124944272,"our_experiment",1,99,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.47108416789919,"2018_Jul_09_2320",59.9330124944272,"our_experiment",1,99,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41526638652459,"2018_Jul_09_2320",59.9330124944272,"our_experiment",1,99,NA
```

</details>

<br />

Person 2 should go ahead and stage and change the new data file. Send
your changes to the remote `origin` repo. Person 1 should get these
changes from Person 2 via the `origin` remote repository and incorporate
them into their local `master` branch before moving on to the next step.

## Step 12

Hmm, you and your collaborator notice in the course of your data
analysis that, contrary to your expectations there is no difference
between people's preferences for octopus pictures and sock
pictures. However, you furthermore notice that there is one sock picture
(the second one) that people consistently rated as 7 in the experiment.
Upon further thought, you realize that you probably shouldn't have
included such a, well, ostentatious image in your experimental
items. Indeed, if you exclude this item from the analysis, you do see
that people prefer pictures of octopuses to pictures of socks, just as
you were expecting.

But reviewers aren't going to be happy with this ...

So you decide to replicate your findings with a new experiment, this
time being much more careful about how you select your stimuli.

This seems like a reasonably substantive change that you both agree that
it makes sense to use the feature branch workflow for this. You can both
work together on a branch where you design the new experiment, but then
you can also both occassionally work on the `master` branch at the same
time, in order to get started on writing your manuscript, all without
interfering with the design of the new expeirment.

To keep track of all of your thoughts about this, Person 1 should go to
the GitLab repository in a browser and create an issue for the
repository. In the "Title" field put the following content:

```
Design follow-up experiment with better items
```

In the "Description" field put the following content:

```
Create a follow-up experiment to test for effect of image type with
better controlled stimuli.
```

Both you and Person 2 will be working on this together, so assign it to
both of you, if you'd like to use this GitLab task management feature.

Click "Submit issue" to create the issue.

(Remember that the issue feature of GitLab is something that lives
outside of the git repository; it's a feature that GitLab has built on
top of git repositories. You can export GitLab issues to CSV format, if
you want to keep your own record of them. I bring this up only to say
that it's probably not a bad idea to also document your reasons for
making substantive decisions in the `README.md` file. What you put in
this file can be more a concise summary of what goes into the issue, and
it won't include any subsequent discussion you and your collaborators
have in the issue thread on GitLab's website, but it will be a helpful
reminder to your future self, your future collaborators' selves, and
anybody else you might later share this repository with. The number of
hours I've wasted trying to recreate my thought process at various
points in the experimental design process is ... a large number, so this
can be immensely helpful. Don't do this now, as there are other git
things I'd like you to practice, but just keep this recommended best
practice in mind.)

Now that you have an issue for this, you can also create a branch,
following the branch naming conventions that we've discussed. Again, the
branch naming conventions that I recommend following involve a prefix
for the branch type, followed by `/`, followed by the associated issue
number (if there is one), followed by `/`, followed by, finally, a short
description of what this new branch aims to do, **all without spaces**.

Thus, branch names for branches with associated issues in an issue
tracker might look like this (`feat` for "feature", `bug` for "bugfix",
`wip` for "work in progress", all of which are standard conventional
prefixes, and, my suggestion, `rc` for "reviewer comment"):

- `feat/1/new-experiment`
- `bug/4/fix-website`
- `wip/7/rewrite-codebase-python3`
- `rc/11/item-analysis`

Similarly, branch names for branches *without* an associated issue in an
issue tracker might look like this:

- `feat/new-experiment`
- `bug/fix-website`
- `wip/rewrite-codebase-python3`
- `rc/item-analysis`

Okay, Person 2 should now create a branch for the issue that Person 1
just created, using these naming conventions. The `feat` prefix seems
reasonable here (again, we don't have great conventions for academic
uses of git, so if you can think of something better, feel free to use
it, so long as you and your collaborators are on the same page).

So Person 2 should create a branch called `feat/1/new-experiment`.

Next, there will be some rearranging to do. For the purposes of making
you realize how flexible git is, Person 2 should not yet actually switch
to this new branch. Instead, pretend that you think you've switched
branches, but you actually haven't. So Person 2 should still be on the
`master` branch.

First, you'll want to create a new folder inside of the `materials`
folder called `experiment1`. Next, move the `images` folder, the
`our_experiment.psyexp` file, and the `stimuli.csv` file so that they
all now live inside of the newly created `experiment1` folder.

Person 2 should stage and commit these changes.

Oops! You just realized you didn't actually switch branches, but the
commit you just made should be part of the branch you created. Discuss
with Person 1 how you can make this happen and also how you can put the
`master` branch back to where it was. This is a little tricky, but it
should be doable given what you've learned in the workshops.

<details>

<summary>
<button type="button" class="btn btn-primary">
Click this line to reveal a hint if you and your collaborator
are really stuck.
</button>
</summary>

<br />

This isn't a hint, so much as it's an answer. 😋

Take a look at the second part
of [this answer](https://stackoverflow.com/a/1628584/2571049) to the
question
"[Move the most recent commit(s) to a new branch with Git](https://stackoverflow.com/q/1628563/2571049)"
on Stack Overflow.

</details>

<br />

Person 2, now that you've gotten your accidental commit on the `master`
branch over to your branch `feat/1/new-experiment` and moved your
`master` branch back to the preceding commit, go ahead and push that
commit to the `origin` remote repository. Since this is a new branch,
don't forget that you'll need to set the default "upstream" branch for
this branch.

Person 1, go ahead and get the changes from the `origin` repo that
Person 2 just pushed. Person 1, you now have a (local) "remote-tracking"
branch called `origin/feat/1/new-experiment`, but you don't yet have a
"normal" (*i.e.*, non-remote-tracking) local branch for this new
experiment. How might you create it and make it point to the new commit
that Person 2 just pushed? (Hint: don't forget that the command
`git branch` takes two arguments, and don't forget that you now have a
pointer in your repo called `origin/feat/1/new-experiment`.) Discuss
with Person 2.[^3]

Okay, now you both have local branches called `feat/1/new-experiment`,
so you're ready to get to work on making that next experiment. Person 2
has already done the first step of rearranging the files a bit.

## Step 13

Because of the rearranged files, you'll need to edit the `.gitiginore`
file a bit. Person 2 should change the line in the `.gitignore` file
that says `materials/data` to instead say `materials/**/data`. Person 2
should make this change, and stage and commit it.

(You can read more about `.gitignore`
patterns [here][gitignore-patterns].)

At the same time, Person 1 should create a new folder inside the
`materials` folder called `experiment2`. Inside this folder, you'll want
to add the same three things that are in the `experiment1` folder: the
`images` folder and all of the images inside of it, the `stimuli.csv`
file, and the `.psyexp` file.

Honestly, just copy and paste all three of those things into this new
`experiment2` folder for the sake of saving time. Let's not actually
spend time going to find more images. The only thing you should change
is the name of the `.psyexp` file. Change it from
`our_experiment.psyexp` to `our_experiment_2.psyexp`.

Even though you've copied these things at the same time, Person 1, you
should still go ahead and take the time to make some more granular
commits. Make at least two different commits here (one for the stimuli
file and images, and one for the PsychoPy experiment).

Person 1 should push your new changes to the remote `origin` repository
before Person 2 attempts to push their change to the `.gitignore`
file. Don't forget, Person 1, that you'll need to set the default
"upstream" branch for your local branch since this is the first time
you're pushing this branch.

Person 2, you'll need to first get Person 1's new changes from `origin`,
and then you'll need to reapply your change on top of Person 1's
changes. Do this now.

Moreover, the following should have been implicit in your discussion
with Person 1 at previous steps in this exercise as to why you needed to
do this, but please explicitly discuss with Person 1 why it is the case
that you need to reapply your changes on top of Person 1's changes *even
though you've edited different files*. (Hint: what is the thing in the
git object model that actually enshrines changes that you make, and what
are the important component parts of this thing?)

After reapplying your changes and discussing this with Person 1, you
should push your changes to `origin`.

Person 1, before moving on, make sure you get these new changes from
`origin` that Person 2 just pushed, and incorporate them into your local
`feat/1/new-experiment` branch.

## Step 14

Person 1, you think the new experiment branch is good to go. Go to the
GitLab repository in a browser, and open a merge request from the branch
`feat/1/new-experiment` to the `master` branch. Give it a title and a
decsription (these can be similar to the issues). Don't forget to set up
the "Description" of the merge request such that GitLab knows to
automatically close the issue when the merge request is merged into the
`master` branch. (Hint: GitLab does this by looking for a particular
word in the body of the "Description" and an associated issue number
(preceded by `#`).)

In the "Description" of the merge request, you can also `@`-mention your
collaborator, Person 2, and ask Person 2 to review the merge request
before it gets merged in.

While Perosn 1 is doing all of this, Person 2, you should *switch back
to the `master` branch* in your local repository and start working on
that manuscript. Go ahead and create a folder called
`manuscript`. Inside that folder, create a file called `manuscript.Rmd`,
which is an RMarkdown file.

Put the following content in the `manuscript.Rmd` file (note that if you
or your collaborator want to be able to actually compile this RMarkdown
document, which honestly won't be necessary for the purposes of this
exercise, you'll need to make sure that the `file_path` variable below
is set to wherever the repository exists on your computer).

````
---
title: "Octopus or sock?"
author: "Person 1 and Person 2"
date: "7/11/2018"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r my_data, echo=FALSE}
file_path <- "~/our_experiment"
data_exp_one <- read.csv(file.path(file_path, "raw_data", "data.csv"),
                         stringsAsFactors = FALSE)
```

# Introduction

# Conclusion

````

Person 2 should change and commit this change and push it to the
`origin` remote repository.

Before moving on to the next step, Person 1 should get the new changes
that Person 2 just pushed to the `origin` repository, switch back to
their `master` branch, and incorporate the new changes from Person 2
into their local `master` branch.

## Step 15

Person 2, you should now review the merge request. You take a look at
things, and you realize that, while Person 1 did change the name of the
new `.psyexp` file, Person 1 did not change the name of the experiment
inside of PsychoPy. This is something that should probably be changed,
because, when analyzing your data, this is the value that will be in the
column for the expeirment name, and you don't want to confuse the data
from your first experiment with the data from your second experiment,
especially in case you accidentally use the same participant numbers for
this second experiment.

So leave a comment in the thread for the merge request asking Person 1
to change this. The URL for the merge request should be something like:
`https://gitlab.com/<PERSON_2_USERNAME>/our_experiment/merge_requests/1`

Person 1, after you see the comment from Person 2, go ahead and address
it. First, you'll need to switch back to the branch
`feat/1/new-experiment`.

Next, open the file `our_experiment_2.psyexp` in a text editor. Find
line 25. It should say:

```xml
<Param name="expName" updates="None" val="our_experiment" valType="str"/>
```

Change this to:

```xml
<Param name="expName" updates="None" val="our_experiment_2" valType="str"/>
```

Go ahead and commit this, and push this new change to `origin`.

Both Person 1 and Person 2 should go ahead and take a look at the merge
request thread in the browser on GitLab's website. Notice that the merge
request has been updated after Person 1 pushed this new change without
either of you needing to do anything. Why is this the case? (Hint: merge
requests refer to branches, and what are branches in the git object
model?)

## Step 16

Okay, you both are in agreement now. The feature branch is ready to be
merged in. However, there have been new commits on `master` since the
feature branch diverged from the `master` branch, so it would be a good
idea to rebase `feat/1/new-experiment` onto `master`. To reiterate what
we discussed last time, there are two main reasons to do this. First,
especially if you're not the person who has to merge in the merge
request, it's courteous for you to do this so that you deal with any
potential merge conflicts, rather than forcing the person who merges it
in to have to deal with merge conflicts. This is particularly nice to do
if you find yourself contributing to an open source project. And second,
dealing with any potential merge conflicts in advance just ensures that
the merge step is quick and clean for whoever has to do it.

So Person 1 should go ahead and rebase `feat/1/new-experiment` onto
`master`. Before you do this, discuss with Person 2 why what you're
doing is okay. That is to say, you're about to rebase public commits,
which violates [The Golden Rule of Rebasing][golden-rule]. Why is this
okay in this case?

Okay, now that you've discussed this, Person 1 should rebase
`feat/1/new-experiment` onto `master`, and force push the result of this
to `origin`. (You won't have any merge conflicts to deal with here,
because the one change on `master` since the point of divergence didn't
edit the same files.)

(Furthermore, note that the merge request in GitLab has once again been
updated without either of you needing to do anything.)

Let's have Person 2 actually merge the merge request in to
`master`. Person 2, you will first need to get the new changes from
`origin`. After you do this, be sure to take a look at the log of all
branches. Notice that your local branch called `feat/1/new-experiment`
is now completely distinct from your local branch called
`origin/feat/1/new-experiment`. This is because Person 1 just rewrote
`feat/1/new-experiment` and (force) pushed the results of that rewriting
to the `origin` repository.

You need to figure out how to make your local branch
`feat/1/new-experiment` point to whatever `origin/feat/1/new-experiment`
points to. First, check out your local branch `feat/1/new-experiment`,
and then make it point to whatever `origin/feat/1/new-experiment` points
to. Discuss with Person 1 how to do this if you get stuck. This is not
something we covered in the workshop explicitly, but you should have the
requisite knowledge to do it.

<details>

<summary>
<button type="button" class="btn btn-primary">
If you're really stuck, click this line to reveal the
answer.
</button>
</summary>

<br />

You'll need to do the following in order to do this:

```sh
git checkout feat/1/new-experiment
git reset --hard origin/feat/1/new-experiment
```

</details>

<br />

Note that, had you made any new commits on the `feat/1/new-experiment`
branch, these would become dangling commits after you've made your local
`feat/1/new-experiment` branch point to the same thing that
`origin/feat/1/new-experiment` points to. This is why it is almost
always a bad idea to rebase public commits. However, you talked with
your collaborators about this in advance, and Person 1 knew you wouldn't
have any new commits on this branch, so Person 1 knew you wouldn't have
to try to recover any dangling commits. Thus, it was "safe" for Person 1
to go ahead and rebase and then force push.

Okay, you now can merge the branch in to the master branch. Person 2
should switch to the `master` branch, and merge in
`feat/1/new-experiment`. **Before running the command to do this**,
think about what you want to happen, given that you're trying to follow
the feature branch workflow here. Specifically, you want git to create a
merge commit so that you can readily identify the series of commits that
went into developing this new feature. Will this happen if you run the
requisite command without any optional flags? Why or why not? If not,
what can you do to make sure that you follow the feature branch
workflow? Discuss all of this with Person 1, and then run a command that
results in you merging the `feat/1/new-experiment` branch into the
`master` branch *with a merge commit*.

Even though the magical string that causes GitLab to automatically close
the issue is already in the body of the merge request on GitLab, go
ahead and also add this magical string to the commit message for the
merge commit. Use the default merge commit message, so add this magical
string on the third line of the commit message (don't forget that you
should always leave a blank line after the first line of a commit
message).

Okay, now that you've merged `feat/1/new-experiment` into the `master`
branch, go ahead and send the new changes to `origin`. Doing so should
cause GitLab to automatically mark the merge request as merged and also
autoatmically close the associated issue. 🙌

Person 1, go ahead and fetch these new changes from `origin` and
incorporate them in to your local `master` branch.

You can now both do a bit of cleanup. Both Person 1 and Person 2 can
delete their local `feat/1/new-experiment` branch. Do so, and also
discuss with each other why you can delete the branch without losing the
work that was on the branch. (Hint: what are branches in the git object
model?)

Person 2, you can furthermore delete the branch from the `origin`
repository. Do so now before moving on to the next step.

## Step 17

Alright, [moar data][data]!

Person 1, go ahead and create a file inside the `raw_data` folder called
`data_exp_two.csv`, and copy and paste the following data into that
file (hidden by default, again).

<details>

<summary>
<button type="button" class="btn btn-primary">
Click this line to reveal/hide the contents of
<code>data_exp_two.csv</code>.
</button>
</summary>

```
"Condition","Image","trials.thisRepN","trials.thisTrialN","trials.thisN","trials.thisIndex","key_resp_2.keys","key_resp_2.rt","rating.response","rating.rt","date","frameRate","expName","session","participant","X"
"","",NA,NA,NA,NA,"space",4.06287721253654,NA,NA,"2018_Jul_10_1446",59.9330124944272,"our_experiment_2",1,1,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28495217873193,"2018_Jul_10_1446",59.9330124944272,"our_experiment_2",1,1,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04378965975046,"2018_Jul_10_1446",59.9330124944272,"our_experiment_2",1,1,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59689053733312,"2018_Jul_10_1446",59.9330124944272,"our_experiment_2",1,1,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45417183547206,"2018_Jul_10_1446",59.9330124944272,"our_experiment_2",1,1,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33811286343895,"2018_Jul_10_1446",59.9330124944272,"our_experiment_2",1,1,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48379230728336,"2018_Jul_10_1446",59.9330124944272,"our_experiment_2",1,1,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47392786904201,"2018_Jul_10_1446",59.9330124944272,"our_experiment_2",1,1,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41382467881106,"2018_Jul_10_1446",59.9330124944272,"our_experiment_2",1,1,NA
"","",NA,NA,NA,NA,"space",4.15322865474625,NA,NA,"2018_Jul_10_1455",59.9330124944272,"our_experiment_2",1,10,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28259295091406,"2018_Jul_10_1455",59.9330124944272,"our_experiment_2",1,10,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04244920453094,"2018_Jul_10_1455",59.9330124944272,"our_experiment_2",1,10,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59662475020103,"2018_Jul_10_1455",59.9330124944272,"our_experiment_2",1,10,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45277038507275,"2018_Jul_10_1455",59.9330124944272,"our_experiment_2",1,10,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33690707711391,"2018_Jul_10_1455",59.9330124944272,"our_experiment_2",1,10,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48595268591829,"2018_Jul_10_1455",59.9330124944272,"our_experiment_2",1,10,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47052413931116,"2018_Jul_10_1455",59.9330124944272,"our_experiment_2",1,10,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41636998552307,"2018_Jul_10_1455",59.9330124944272,"our_experiment_2",1,10,NA
"","",NA,NA,NA,NA,"space",4.03011509134783,NA,NA,"2018_Jul_10_1625",59.9330124944272,"our_experiment_2",1,100,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28246731205732,"2018_Jul_10_1625",59.9330124944272,"our_experiment_2",1,100,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04522746822611,"2018_Jul_10_1625",59.9330124944272,"our_experiment_2",1,100,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59890716760159,"2018_Jul_10_1625",59.9330124944272,"our_experiment_2",1,100,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45507851049453,"2018_Jul_10_1625",59.9330124944272,"our_experiment_2",1,100,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33795798525624,"2018_Jul_10_1625",59.9330124944272,"our_experiment_2",1,100,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48299932170324,"2018_Jul_10_1625",59.9330124944272,"our_experiment_2",1,100,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,7,1.46968555899523,"2018_Jul_10_1625",59.9330124944272,"our_experiment_2",1,100,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41441917030029,"2018_Jul_10_1625",59.9330124944272,"our_experiment_2",1,100,NA
"","",NA,NA,NA,NA,"space",4.05046737509599,NA,NA,"2018_Jul_10_1456",59.9330124944272,"our_experiment_2",1,11,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.2844828686554,"2018_Jul_10_1456",59.9330124944272,"our_experiment_2",1,11,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04181156351157,"2018_Jul_10_1456",59.9330124944272,"our_experiment_2",1,11,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.60012611353695,"2018_Jul_10_1456",59.9330124944272,"our_experiment_2",1,11,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45376288022362,"2018_Jul_10_1456",59.9330124944272,"our_experiment_2",1,11,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33594141333923,"2018_Jul_10_1456",59.9330124944272,"our_experiment_2",1,11,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48183863148689,"2018_Jul_10_1456",59.9330124944272,"our_experiment_2",1,11,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,5,1.47315885394141,"2018_Jul_10_1456",59.9330124944272,"our_experiment_2",1,11,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41372841277719,"2018_Jul_10_1456",59.9330124944272,"our_experiment_2",1,11,NA
"","",NA,NA,NA,NA,"space",4.11003684121905,NA,NA,"2018_Jul_10_1457",59.9330124944272,"our_experiment_2",1,12,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28406634692438,"2018_Jul_10_1457",59.9330124944272,"our_experiment_2",1,12,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04168381205313,"2018_Jul_10_1457",59.9330124944272,"our_experiment_2",1,12,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,2,1.59964487863407,"2018_Jul_10_1457",59.9330124944272,"our_experiment_2",1,12,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45170010736585,"2018_Jul_10_1457",59.9330124944272,"our_experiment_2",1,12,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33596089791358,"2018_Jul_10_1457",59.9330124944272,"our_experiment_2",1,12,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48427795214467,"2018_Jul_10_1457",59.9330124944272,"our_experiment_2",1,12,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47048380594514,"2018_Jul_10_1457",59.9330124944272,"our_experiment_2",1,12,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41497590403594,"2018_Jul_10_1457",59.9330124944272,"our_experiment_2",1,12,NA
"","",NA,NA,NA,NA,"space",4.07559951595402,NA,NA,"2018_Jul_10_1458",59.9330124944272,"our_experiment_2",1,13,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.2826281276349,"2018_Jul_10_1458",59.9330124944272,"our_experiment_2",1,13,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04435662083067,"2018_Jul_10_1458",59.9330124944272,"our_experiment_2",1,13,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59803874733038,"2018_Jul_10_1458",59.9330124944272,"our_experiment_2",1,13,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45395503423624,"2018_Jul_10_1458",59.9330124944272,"our_experiment_2",1,13,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33885200119987,"2018_Jul_10_1458",59.9330124944272,"our_experiment_2",1,13,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48504856291264,"2018_Jul_10_1458",59.9330124944272,"our_experiment_2",1,13,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,5,1.47154291703142,"2018_Jul_10_1458",59.9330124944272,"our_experiment_2",1,13,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41517010418959,"2018_Jul_10_1458",59.9330124944272,"our_experiment_2",1,13,NA
"","",NA,NA,NA,NA,"space",4.11914730461726,NA,NA,"2018_Jul_10_1459",59.9330124944272,"our_experiment_2",1,14,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28228950298689,"2018_Jul_10_1459",59.9330124944272,"our_experiment_2",1,14,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04466332509592,"2018_Jul_10_1459",59.9330124944272,"our_experiment_2",1,14,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59690889377035,"2018_Jul_10_1459",59.9330124944272,"our_experiment_2",1,14,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45067134479955,"2018_Jul_10_1459",59.9330124944272,"our_experiment_2",1,14,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33734813215695,"2018_Jul_10_1459",59.9330124944272,"our_experiment_2",1,14,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48311521141529,"2018_Jul_10_1459",59.9330124944272,"our_experiment_2",1,14,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.46993775504008,"2018_Jul_10_1459",59.9330124944272,"our_experiment_2",1,14,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41731086603291,"2018_Jul_10_1459",59.9330124944272,"our_experiment_2",1,14,NA
"","",NA,NA,NA,NA,"space",4.07428921711849,NA,NA,"2018_Jul_10_1500",59.9330124944272,"our_experiment_2",1,15,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28285344766155,"2018_Jul_10_1500",59.9330124944272,"our_experiment_2",1,15,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04073356578127,"2018_Jul_10_1500",59.9330124944272,"our_experiment_2",1,15,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59687340719402,"2018_Jul_10_1500",59.9330124944272,"our_experiment_2",1,15,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45205068391599,"2018_Jul_10_1500",59.9330124944272,"our_experiment_2",1,15,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33726123312563,"2018_Jul_10_1500",59.9330124944272,"our_experiment_2",1,15,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48613923326135,"2018_Jul_10_1500",59.9330124944272,"our_experiment_2",1,15,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47375497391038,"2018_Jul_10_1500",59.9330124944272,"our_experiment_2",1,15,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41516749935783,"2018_Jul_10_1500",59.9330124944272,"our_experiment_2",1,15,NA
"","",NA,NA,NA,NA,"space",4.14647197383056,NA,NA,"2018_Jul_10_1501",59.9330124944272,"our_experiment_2",1,16,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28230580453575,"2018_Jul_10_1501",59.9330124944272,"our_experiment_2",1,16,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.0450825032074,"2018_Jul_10_1501",59.9330124944272,"our_experiment_2",1,16,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59761590652503,"2018_Jul_10_1501",59.9330124944272,"our_experiment_2",1,16,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45190313481465,"2018_Jul_10_1501",59.9330124944272,"our_experiment_2",1,16,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33876673354395,"2018_Jul_10_1501",59.9330124944272,"our_experiment_2",1,16,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48601548921987,"2018_Jul_10_1501",59.9330124944272,"our_experiment_2",1,16,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,4,1.47143201894723,"2018_Jul_10_1501",59.9330124944272,"our_experiment_2",1,16,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41576178067587,"2018_Jul_10_1501",59.9330124944272,"our_experiment_2",1,16,NA
"","",NA,NA,NA,NA,"space",4.15555553762565,NA,NA,"2018_Jul_10_1502",59.9330124944272,"our_experiment_2",1,17,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28530397373252,"2018_Jul_10_1502",59.9330124944272,"our_experiment_2",1,17,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04215251570791,"2018_Jul_10_1502",59.9330124944272,"our_experiment_2",1,17,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.60088218910918,"2018_Jul_10_1502",59.9330124944272,"our_experiment_2",1,17,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45160680783056,"2018_Jul_10_1502",59.9330124944272,"our_experiment_2",1,17,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33591839678623,"2018_Jul_10_1502",59.9330124944272,"our_experiment_2",1,17,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48500617775843,"2018_Jul_10_1502",59.9330124944272,"our_experiment_2",1,17,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,5,1.47092111197412,"2018_Jul_10_1502",59.9330124944272,"our_experiment_2",1,17,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.4179029675778,"2018_Jul_10_1502",59.9330124944272,"our_experiment_2",1,17,NA
"","",NA,NA,NA,NA,"space",3.99895830045345,NA,NA,"2018_Jul_10_1503",59.9330124944272,"our_experiment_2",1,18,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28352245154977,"2018_Jul_10_1503",59.9330124944272,"our_experiment_2",1,18,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04235297707282,"2018_Jul_10_1503",59.9330124944272,"our_experiment_2",1,18,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.60097675046399,"2018_Jul_10_1503",59.9330124944272,"our_experiment_2",1,18,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45164615953825,"2018_Jul_10_1503",59.9330124944272,"our_experiment_2",1,18,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.3367075296659,"2018_Jul_10_1503",59.9330124944272,"our_experiment_2",1,18,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48583828850128,"2018_Jul_10_1503",59.9330124944272,"our_experiment_2",1,18,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47156890637167,"2018_Jul_10_1503",59.9330124944272,"our_experiment_2",1,18,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41570320685692,"2018_Jul_10_1503",59.9330124944272,"our_experiment_2",1,18,NA
"","",NA,NA,NA,NA,"space",4.04457644510849,NA,NA,"2018_Jul_10_1504",59.9330124944272,"our_experiment_2",1,19,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28366047299989,"2018_Jul_10_1504",59.9330124944272,"our_experiment_2",1,19,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.0425612550687,"2018_Jul_10_1504",59.9330124944272,"our_experiment_2",1,19,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.60106515664868,"2018_Jul_10_1504",59.9330124944272,"our_experiment_2",1,19,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.4532603630282,"2018_Jul_10_1504",59.9330124944272,"our_experiment_2",1,19,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33798268851638,"2018_Jul_10_1504",59.9330124944272,"our_experiment_2",1,19,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48593849369213,"2018_Jul_10_1504",59.9330124944272,"our_experiment_2",1,19,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47160626783445,"2018_Jul_10_1504",59.9330124944272,"our_experiment_2",1,19,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.4164102863092,"2018_Jul_10_1504",59.9330124944272,"our_experiment_2",1,19,NA
"","",NA,NA,NA,NA,"space",4.0001443344933,NA,NA,"2018_Jul_10_1447",59.9330124944272,"our_experiment_2",1,2,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28163056944236,"2018_Jul_10_1447",59.9330124944272,"our_experiment_2",1,2,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04522834464125,"2018_Jul_10_1447",59.9330124944272,"our_experiment_2",1,2,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.59957016537897,"2018_Jul_10_1447",59.9330124944272,"our_experiment_2",1,2,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,2,1.45500323713496,"2018_Jul_10_1447",59.9330124944272,"our_experiment_2",1,2,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.335871783657,"2018_Jul_10_1447",59.9330124944272,"our_experiment_2",1,2,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48312866345681,"2018_Jul_10_1447",59.9330124944272,"our_experiment_2",1,2,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47079990391321,"2018_Jul_10_1447",59.9330124944272,"our_experiment_2",1,2,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41634568426907,"2018_Jul_10_1447",59.9330124944272,"our_experiment_2",1,2,NA
"","",NA,NA,NA,NA,"space",4.08494863342738,NA,NA,"2018_Jul_10_1505",59.9330124944272,"our_experiment_2",1,20,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.28526580451578,"2018_Jul_10_1505",59.9330124944272,"our_experiment_2",1,20,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04151712023057,"2018_Jul_10_1505",59.9330124944272,"our_experiment_2",1,20,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.60118468603231,"2018_Jul_10_1505",59.9330124944272,"our_experiment_2",1,20,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45512524930313,"2018_Jul_10_1505",59.9330124944272,"our_experiment_2",1,20,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33776765975468,"2018_Jul_10_1505",59.9330124944272,"our_experiment_2",1,20,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48201169084013,"2018_Jul_10_1505",59.9330124944272,"our_experiment_2",1,20,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47068992043771,"2018_Jul_10_1505",59.9330124944272,"our_experiment_2",1,20,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41541450974606,"2018_Jul_10_1505",59.9330124944272,"our_experiment_2",1,20,NA
"","",NA,NA,NA,NA,"space",4.15153964785276,NA,NA,"2018_Jul_10_1506",59.9330124944272,"our_experiment_2",1,21,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28357091200575,"2018_Jul_10_1506",59.9330124944272,"our_experiment_2",1,21,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.0439467460338,"2018_Jul_10_1506",59.9330124944272,"our_experiment_2",1,21,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59941769859381,"2018_Jul_10_1506",59.9330124944272,"our_experiment_2",1,21,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45491514881216,"2018_Jul_10_1506",59.9330124944272,"our_experiment_2",1,21,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33682703878991,"2018_Jul_10_1506",59.9330124944272,"our_experiment_2",1,21,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48570081527121,"2018_Jul_10_1506",59.9330124944272,"our_experiment_2",1,21,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.4732222533986,"2018_Jul_10_1506",59.9330124944272,"our_experiment_2",1,21,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.4168688110657,"2018_Jul_10_1506",59.9330124944272,"our_experiment_2",1,21,NA
"","",NA,NA,NA,NA,"space",4.02067509347173,NA,NA,"2018_Jul_10_1507",59.9330124944272,"our_experiment_2",1,22,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28303752211183,"2018_Jul_10_1507",59.9330124944272,"our_experiment_2",1,22,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04132603385113,"2018_Jul_10_1507",59.9330124944272,"our_experiment_2",1,22,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59724770617634,"2018_Jul_10_1507",59.9330124944272,"our_experiment_2",1,22,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45133157598227,"2018_Jul_10_1507",59.9330124944272,"our_experiment_2",1,22,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33887217883915,"2018_Jul_10_1507",59.9330124944272,"our_experiment_2",1,22,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.4854121385362,"2018_Jul_10_1507",59.9330124944272,"our_experiment_2",1,22,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47381802692674,"2018_Jul_10_1507",59.9330124944272,"our_experiment_2",1,22,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41671161245033,"2018_Jul_10_1507",59.9330124944272,"our_experiment_2",1,22,NA
"","",NA,NA,NA,NA,"space",4.06197732244267,NA,NA,"2018_Jul_10_1508",59.9330124944272,"our_experiment_2",1,23,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28471261090152,"2018_Jul_10_1508",59.9330124944272,"our_experiment_2",1,23,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04115048681945,"2018_Jul_10_1508",59.9330124944272,"our_experiment_2",1,23,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.60078312795311,"2018_Jul_10_1508",59.9330124944272,"our_experiment_2",1,23,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45317362583131,"2018_Jul_10_1508",59.9330124944272,"our_experiment_2",1,23,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.3377183757823,"2018_Jul_10_1508",59.9330124944272,"our_experiment_2",1,23,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48220990684628,"2018_Jul_10_1508",59.9330124944272,"our_experiment_2",1,23,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47091486498751,"2018_Jul_10_1508",59.9330124944272,"our_experiment_2",1,23,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41532933325954,"2018_Jul_10_1508",59.9330124944272,"our_experiment_2",1,23,NA
"","",NA,NA,NA,NA,"space",4.07332793180475,NA,NA,"2018_Jul_10_1509",59.9330124944272,"our_experiment_2",1,24,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28259353955612,"2018_Jul_10_1509",59.9330124944272,"our_experiment_2",1,24,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04428594888896,"2018_Jul_10_1509",59.9330124944272,"our_experiment_2",1,24,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59760712354109,"2018_Jul_10_1509",59.9330124944272,"our_experiment_2",1,24,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45106640036926,"2018_Jul_10_1509",59.9330124944272,"our_experiment_2",1,24,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33622801738158,"2018_Jul_10_1509",59.9330124944272,"our_experiment_2",1,24,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48353022746928,"2018_Jul_10_1509",59.9330124944272,"our_experiment_2",1,24,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,4,1.47192097836509,"2018_Jul_10_1509",59.9330124944272,"our_experiment_2",1,24,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41483034054711,"2018_Jul_10_1509",59.9330124944272,"our_experiment_2",1,24,NA
"","",NA,NA,NA,NA,"space",4.11135630904606,NA,NA,"2018_Jul_10_1510",59.9330124944272,"our_experiment_2",1,25,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28369049680382,"2018_Jul_10_1510",59.9330124944272,"our_experiment_2",1,25,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04197686057538,"2018_Jul_10_1510",59.9330124944272,"our_experiment_2",1,25,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59700664530322,"2018_Jul_10_1510",59.9330124944272,"our_experiment_2",1,25,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45343590062521,"2018_Jul_10_1510",59.9330124944272,"our_experiment_2",1,25,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33808862732574,"2018_Jul_10_1510",59.9330124944272,"our_experiment_2",1,25,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48291251696944,"2018_Jul_10_1510",59.9330124944272,"our_experiment_2",1,25,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47301235090718,"2018_Jul_10_1510",59.9330124944272,"our_experiment_2",1,25,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41477017796077,"2018_Jul_10_1510",59.9330124944272,"our_experiment_2",1,25,NA
"","",NA,NA,NA,NA,"space",4.12452231365728,NA,NA,"2018_Jul_10_1511",59.9330124944272,"our_experiment_2",1,26,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28525045699514,"2018_Jul_10_1511",59.9330124944272,"our_experiment_2",1,26,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04474573583826,"2018_Jul_10_1511",59.9330124944272,"our_experiment_2",1,26,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.5972234976653,"2018_Jul_10_1511",59.9330124944272,"our_experiment_2",1,26,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.4553370745942,"2018_Jul_10_1511",59.9330124944272,"our_experiment_2",1,26,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33893969487697,"2018_Jul_10_1511",59.9330124944272,"our_experiment_2",1,26,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48467818504721,"2018_Jul_10_1511",59.9330124944272,"our_experiment_2",1,26,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.46982226496711,"2018_Jul_10_1511",59.9330124944272,"our_experiment_2",1,26,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41638057714514,"2018_Jul_10_1511",59.9330124944272,"our_experiment_2",1,26,NA
"","",NA,NA,NA,NA,"space",4.14251782916138,NA,NA,"2018_Jul_10_1512",59.9330124944272,"our_experiment_2",1,27,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28207126293592,"2018_Jul_10_1512",59.9330124944272,"our_experiment_2",1,27,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04362522513866,"2018_Jul_10_1512",59.9330124944272,"our_experiment_2",1,27,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.60026321741566,"2018_Jul_10_1512",59.9330124944272,"our_experiment_2",1,27,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45518164427988,"2018_Jul_10_1512",59.9330124944272,"our_experiment_2",1,27,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.3376479354918,"2018_Jul_10_1512",59.9330124944272,"our_experiment_2",1,27,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.4858643190749,"2018_Jul_10_1512",59.9330124944272,"our_experiment_2",1,27,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.469833840077,"2018_Jul_10_1512",59.9330124944272,"our_experiment_2",1,27,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41792206509039,"2018_Jul_10_1512",59.9330124944272,"our_experiment_2",1,27,NA
"","",NA,NA,NA,NA,"space",4.05526656274746,NA,NA,"2018_Jul_10_1513",59.9330124944272,"our_experiment_2",1,28,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28615891603753,"2018_Jul_10_1513",59.9330124944272,"our_experiment_2",1,28,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04257880121395,"2018_Jul_10_1513",59.9330124944272,"our_experiment_2",1,28,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59908632999398,"2018_Jul_10_1513",59.9330124944272,"our_experiment_2",1,28,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45146645651869,"2018_Jul_10_1513",59.9330124944272,"our_experiment_2",1,28,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,1,1.33779574179128,"2018_Jul_10_1513",59.9330124944272,"our_experiment_2",1,28,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48600177036002,"2018_Jul_10_1513",59.9330124944272,"our_experiment_2",1,28,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.470342641991,"2018_Jul_10_1513",59.9330124944272,"our_experiment_2",1,28,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41536918111108,"2018_Jul_10_1513",59.9330124944272,"our_experiment_2",1,28,NA
"","",NA,NA,NA,NA,"space",4.06356400936013,NA,NA,"2018_Jul_10_1514",59.9330124944272,"our_experiment_2",1,29,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28595965988971,"2018_Jul_10_1514",59.9330124944272,"our_experiment_2",1,29,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04331007130481,"2018_Jul_10_1514",59.9330124944272,"our_experiment_2",1,29,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59757723079324,"2018_Jul_10_1514",59.9330124944272,"our_experiment_2",1,29,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45379326462373,"2018_Jul_10_1514",59.9330124944272,"our_experiment_2",1,29,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33869512161426,"2018_Jul_10_1514",59.9330124944272,"our_experiment_2",1,29,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48419213029966,"2018_Jul_10_1514",59.9330124944272,"our_experiment_2",1,29,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47352341670617,"2018_Jul_10_1514",59.9330124944272,"our_experiment_2",1,29,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41468340076655,"2018_Jul_10_1514",59.9330124944272,"our_experiment_2",1,29,NA
"","",NA,NA,NA,NA,"space",4.14760249944533,NA,NA,"2018_Jul_10_1448",59.9330124944272,"our_experiment_2",1,3,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28346641094983,"2018_Jul_10_1448",59.9330124944272,"our_experiment_2",1,3,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04319127785899,"2018_Jul_10_1448",59.9330124944272,"our_experiment_2",1,3,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.60036976227127,"2018_Jul_10_1448",59.9330124944272,"our_experiment_2",1,3,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45347165814824,"2018_Jul_10_1448",59.9330124944272,"our_experiment_2",1,3,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33600832704008,"2018_Jul_10_1448",59.9330124944272,"our_experiment_2",1,3,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48548483828828,"2018_Jul_10_1448",59.9330124944272,"our_experiment_2",1,3,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47111745000258,"2018_Jul_10_1448",59.9330124944272,"our_experiment_2",1,3,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41648412644379,"2018_Jul_10_1448",59.9330124944272,"our_experiment_2",1,3,NA
"","",NA,NA,NA,NA,"space",4.07602047970852,NA,NA,"2018_Jul_10_1515",59.9330124944272,"our_experiment_2",1,30,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28194084875137,"2018_Jul_10_1515",59.9330124944272,"our_experiment_2",1,30,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04416206899583,"2018_Jul_10_1515",59.9330124944272,"our_experiment_2",1,30,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59766512955986,"2018_Jul_10_1515",59.9330124944272,"our_experiment_2",1,30,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45467810738795,"2018_Jul_10_1515",59.9330124944272,"our_experiment_2",1,30,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33517394126877,"2018_Jul_10_1515",59.9330124944272,"our_experiment_2",1,30,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48211538892314,"2018_Jul_10_1515",59.9330124944272,"our_experiment_2",1,30,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47099413355663,"2018_Jul_10_1515",59.9330124944272,"our_experiment_2",1,30,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41741830028221,"2018_Jul_10_1515",59.9330124944272,"our_experiment_2",1,30,NA
"","",NA,NA,NA,NA,"space",4.05774445977716,NA,NA,"2018_Jul_10_1516",59.9330124944272,"our_experiment_2",1,31,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28402931464016,"2018_Jul_10_1516",59.9330124944272,"our_experiment_2",1,31,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04159195186608,"2018_Jul_10_1516",59.9330124944272,"our_experiment_2",1,31,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.60099852910824,"2018_Jul_10_1516",59.9330124944272,"our_experiment_2",1,31,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45429461965151,"2018_Jul_10_1516",59.9330124944272,"our_experiment_2",1,31,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33473246359676,"2018_Jul_10_1516",59.9330124944272,"our_experiment_2",1,31,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48463640203662,"2018_Jul_10_1516",59.9330124944272,"our_experiment_2",1,31,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47133877647482,"2018_Jul_10_1516",59.9330124944272,"our_experiment_2",1,31,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41525535104722,"2018_Jul_10_1516",59.9330124944272,"our_experiment_2",1,31,NA
"","",NA,NA,NA,NA,"space",4.08219322095862,NA,NA,"2018_Jul_10_1517",59.9330124944272,"our_experiment_2",1,32,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28162086839862,"2018_Jul_10_1517",59.9330124944272,"our_experiment_2",1,32,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04514625147246,"2018_Jul_10_1517",59.9330124944272,"our_experiment_2",1,32,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59917351529859,"2018_Jul_10_1517",59.9330124944272,"our_experiment_2",1,32,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45518077467978,"2018_Jul_10_1517",59.9330124944272,"our_experiment_2",1,32,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33836662444435,"2018_Jul_10_1517",59.9330124944272,"our_experiment_2",1,32,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48172588652521,"2018_Jul_10_1517",59.9330124944272,"our_experiment_2",1,32,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.4698346472241,"2018_Jul_10_1517",59.9330124944272,"our_experiment_2",1,32,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.4162164137125,"2018_Jul_10_1517",59.9330124944272,"our_experiment_2",1,32,NA
"","",NA,NA,NA,NA,"space",4.04001566008045,NA,NA,"2018_Jul_10_1518",59.9330124944272,"our_experiment_2",1,33,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.2861611833144,"2018_Jul_10_1518",59.9330124944272,"our_experiment_2",1,33,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04413372893184,"2018_Jul_10_1518",59.9330124944272,"our_experiment_2",1,33,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59690831073299,"2018_Jul_10_1518",59.9330124944272,"our_experiment_2",1,33,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45292653954104,"2018_Jul_10_1518",59.9330124944272,"our_experiment_2",1,33,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33847714944892,"2018_Jul_10_1518",59.9330124944272,"our_experiment_2",1,33,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48217376327403,"2018_Jul_10_1518",59.9330124944272,"our_experiment_2",1,33,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47173119722232,"2018_Jul_10_1518",59.9330124944272,"our_experiment_2",1,33,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41429877457991,"2018_Jul_10_1518",59.9330124944272,"our_experiment_2",1,33,NA
"","",NA,NA,NA,NA,"space",4.12251452063265,NA,NA,"2018_Jul_10_1519",59.9330124944272,"our_experiment_2",1,34,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.2837987556044,"2018_Jul_10_1519",59.9330124944272,"our_experiment_2",1,34,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.0419144855231,"2018_Jul_10_1519",59.9330124944272,"our_experiment_2",1,34,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.59977996091172,"2018_Jul_10_1519",59.9330124944272,"our_experiment_2",1,34,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45206143997423,"2018_Jul_10_1519",59.9330124944272,"our_experiment_2",1,34,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33622790599614,"2018_Jul_10_1519",59.9330124944272,"our_experiment_2",1,34,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48280963748433,"2018_Jul_10_1519",59.9330124944272,"our_experiment_2",1,34,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,4,1.47060863135941,"2018_Jul_10_1519",59.9330124944272,"our_experiment_2",1,34,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41442912758775,"2018_Jul_10_1519",59.9330124944272,"our_experiment_2",1,34,NA
"","",NA,NA,NA,NA,"space",4.07025462144746,NA,NA,"2018_Jul_10_1520",59.9330124944272,"our_experiment_2",1,35,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,1,4.28415471396446,"2018_Jul_10_1520",59.9330124944272,"our_experiment_2",1,35,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.0435742916692,"2018_Jul_10_1520",59.9330124944272,"our_experiment_2",1,35,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59909947819822,"2018_Jul_10_1520",59.9330124944272,"our_experiment_2",1,35,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45360529337637,"2018_Jul_10_1520",59.9330124944272,"our_experiment_2",1,35,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33938490463607,"2018_Jul_10_1520",59.9330124944272,"our_experiment_2",1,35,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48397768019661,"2018_Jul_10_1520",59.9330124944272,"our_experiment_2",1,35,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47211747245342,"2018_Jul_10_1520",59.9330124944272,"our_experiment_2",1,35,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41468229868487,"2018_Jul_10_1520",59.9330124944272,"our_experiment_2",1,35,NA
"","",NA,NA,NA,NA,"space",4.10044055812056,NA,NA,"2018_Jul_10_1521",59.9330124944272,"our_experiment_2",1,36,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28422429398336,"2018_Jul_10_1521",59.9330124944272,"our_experiment_2",1,36,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04119530018307,"2018_Jul_10_1521",59.9330124944272,"our_experiment_2",1,36,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59999798648432,"2018_Jul_10_1521",59.9330124944272,"our_experiment_2",1,36,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45246943772882,"2018_Jul_10_1521",59.9330124944272,"our_experiment_2",1,36,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33542397371642,"2018_Jul_10_1521",59.9330124944272,"our_experiment_2",1,36,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48169865679517,"2018_Jul_10_1521",59.9330124944272,"our_experiment_2",1,36,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,4,1.47232510872409,"2018_Jul_10_1521",59.9330124944272,"our_experiment_2",1,36,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41662338681854,"2018_Jul_10_1521",59.9330124944272,"our_experiment_2",1,36,NA
"","",NA,NA,NA,NA,"space",4.07641562957412,NA,NA,"2018_Jul_10_1522",59.9330124944272,"our_experiment_2",1,37,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28296690709442,"2018_Jul_10_1522",59.9330124944272,"our_experiment_2",1,37,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04397182341292,"2018_Jul_10_1522",59.9330124944272,"our_experiment_2",1,37,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59954602948427,"2018_Jul_10_1522",59.9330124944272,"our_experiment_2",1,37,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45343279708698,"2018_Jul_10_1522",59.9330124944272,"our_experiment_2",1,37,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.336194805675,"2018_Jul_10_1522",59.9330124944272,"our_experiment_2",1,37,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48389914456569,"2018_Jul_10_1522",59.9330124944272,"our_experiment_2",1,37,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47285775652118,"2018_Jul_10_1522",59.9330124944272,"our_experiment_2",1,37,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41686195199005,"2018_Jul_10_1522",59.9330124944272,"our_experiment_2",1,37,NA
"","",NA,NA,NA,NA,"space",3.99753072132683,NA,NA,"2018_Jul_10_1523",59.9330124944272,"our_experiment_2",1,38,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28387913002819,"2018_Jul_10_1523",59.9330124944272,"our_experiment_2",1,38,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04293844657764,"2018_Jul_10_1523",59.9330124944272,"our_experiment_2",1,38,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59986364107318,"2018_Jul_10_1523",59.9330124944272,"our_experiment_2",1,38,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45343439974934,"2018_Jul_10_1523",59.9330124944272,"our_experiment_2",1,38,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33876814444959,"2018_Jul_10_1523",59.9330124944272,"our_experiment_2",1,38,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48508300483674,"2018_Jul_10_1523",59.9330124944272,"our_experiment_2",1,38,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47114040990509,"2018_Jul_10_1523",59.9330124944272,"our_experiment_2",1,38,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.4160422054328,"2018_Jul_10_1523",59.9330124944272,"our_experiment_2",1,38,NA
"","",NA,NA,NA,NA,"space",4.11720967926642,NA,NA,"2018_Jul_10_1524",59.9330124944272,"our_experiment_2",1,39,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28566283713393,"2018_Jul_10_1524",59.9330124944272,"our_experiment_2",1,39,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04345349170752,"2018_Jul_10_1524",59.9330124944272,"our_experiment_2",1,39,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59752266015336,"2018_Jul_10_1524",59.9330124944272,"our_experiment_2",1,39,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45264664261937,"2018_Jul_10_1524",59.9330124944272,"our_experiment_2",1,39,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33640160284676,"2018_Jul_10_1524",59.9330124944272,"our_experiment_2",1,39,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48315270822346,"2018_Jul_10_1524",59.9330124944272,"our_experiment_2",1,39,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47234653166495,"2018_Jul_10_1524",59.9330124944272,"our_experiment_2",1,39,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41467839073427,"2018_Jul_10_1524",59.9330124944272,"our_experiment_2",1,39,NA
"","",NA,NA,NA,NA,"space",4.12368037840428,NA,NA,"2018_Jul_10_1449",59.9330124944272,"our_experiment_2",1,4,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28532568881512,"2018_Jul_10_1449",59.9330124944272,"our_experiment_2",1,4,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.0412705311425,"2018_Jul_10_1449",59.9330124944272,"our_experiment_2",1,4,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59715998010598,"2018_Jul_10_1449",59.9330124944272,"our_experiment_2",1,4,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45185093105771,"2018_Jul_10_1449",59.9330124944272,"our_experiment_2",1,4,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33494861217625,"2018_Jul_10_1449",59.9330124944272,"our_experiment_2",1,4,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48570415326245,"2018_Jul_10_1449",59.9330124944272,"our_experiment_2",1,4,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47414015097357,"2018_Jul_10_1449",59.9330124944272,"our_experiment_2",1,4,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.4179423462417,"2018_Jul_10_1449",59.9330124944272,"our_experiment_2",1,4,NA
"","",NA,NA,NA,NA,"space",4.03707011719132,NA,NA,"2018_Jul_10_1525",59.9330124944272,"our_experiment_2",1,40,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28274925550893,"2018_Jul_10_1525",59.9330124944272,"our_experiment_2",1,40,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04496046840474,"2018_Jul_10_1525",59.9330124944272,"our_experiment_2",1,40,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59755020073131,"2018_Jul_10_1525",59.9330124944272,"our_experiment_2",1,40,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45196062217355,"2018_Jul_10_1525",59.9330124944272,"our_experiment_2",1,40,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33864582713768,"2018_Jul_10_1525",59.9330124944272,"our_experiment_2",1,40,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48442603717819,"2018_Jul_10_1525",59.9330124944272,"our_experiment_2",1,40,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47067632731199,"2018_Jul_10_1525",59.9330124944272,"our_experiment_2",1,40,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41667549699321,"2018_Jul_10_1525",59.9330124944272,"our_experiment_2",1,40,NA
"","",NA,NA,NA,NA,"space",4.02533634948561,NA,NA,"2018_Jul_10_1526",59.9330124944272,"our_experiment_2",1,41,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28287135792449,"2018_Jul_10_1526",59.9330124944272,"our_experiment_2",1,41,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04221380886324,"2018_Jul_10_1526",59.9330124944272,"our_experiment_2",1,41,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59683250800036,"2018_Jul_10_1526",59.9330124944272,"our_experiment_2",1,41,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45375666675009,"2018_Jul_10_1526",59.9330124944272,"our_experiment_2",1,41,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.3370582088396,"2018_Jul_10_1526",59.9330124944272,"our_experiment_2",1,41,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48581126496494,"2018_Jul_10_1526",59.9330124944272,"our_experiment_2",1,41,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47110427055061,"2018_Jul_10_1526",59.9330124944272,"our_experiment_2",1,41,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41567040313669,"2018_Jul_10_1526",59.9330124944272,"our_experiment_2",1,41,NA
"","",NA,NA,NA,NA,"space",4.06812113698783,NA,NA,"2018_Jul_10_1527",59.9330124944272,"our_experiment_2",1,42,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28569661547169,"2018_Jul_10_1527",59.9330124944272,"our_experiment_2",1,42,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04254558432736,"2018_Jul_10_1527",59.9330124944272,"our_experiment_2",1,42,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59977275864296,"2018_Jul_10_1527",59.9330124944272,"our_experiment_2",1,42,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45352080515921,"2018_Jul_10_1527",59.9330124944272,"our_experiment_2",1,42,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33673615176752,"2018_Jul_10_1527",59.9330124944272,"our_experiment_2",1,42,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48443403733708,"2018_Jul_10_1527",59.9330124944272,"our_experiment_2",1,42,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47042648559287,"2018_Jul_10_1527",59.9330124944272,"our_experiment_2",1,42,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.4182078896571,"2018_Jul_10_1527",59.9330124944272,"our_experiment_2",1,42,NA
"","",NA,NA,NA,NA,"space",4.02033452951009,NA,NA,"2018_Jul_10_1528",59.9330124944272,"our_experiment_2",1,43,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28385848094597,"2018_Jul_10_1528",59.9330124944272,"our_experiment_2",1,43,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.0425837890923,"2018_Jul_10_1528",59.9330124944272,"our_experiment_2",1,43,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59927146172635,"2018_Jul_10_1528",59.9330124944272,"our_experiment_2",1,43,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45228824695498,"2018_Jul_10_1528",59.9330124944272,"our_experiment_2",1,43,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33545875017233,"2018_Jul_10_1528",59.9330124944272,"our_experiment_2",1,43,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48411055897586,"2018_Jul_10_1528",59.9330124944272,"our_experiment_2",1,43,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47082853229009,"2018_Jul_10_1528",59.9330124944272,"our_experiment_2",1,43,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41750557334647,"2018_Jul_10_1528",59.9330124944272,"our_experiment_2",1,43,NA
"","",NA,NA,NA,NA,"space",4.15664125161143,NA,NA,"2018_Jul_10_1529",59.9330124944272,"our_experiment_2",1,44,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28219263832085,"2018_Jul_10_1529",59.9330124944272,"our_experiment_2",1,44,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04463847375102,"2018_Jul_10_1529",59.9330124944272,"our_experiment_2",1,44,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59843736173213,"2018_Jul_10_1529",59.9330124944272,"our_experiment_2",1,44,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45421215692572,"2018_Jul_10_1529",59.9330124944272,"our_experiment_2",1,44,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33470664813071,"2018_Jul_10_1529",59.9330124944272,"our_experiment_2",1,44,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,6,1.48406598639861,"2018_Jul_10_1529",59.9330124944272,"our_experiment_2",1,44,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,4,1.47298810696527,"2018_Jul_10_1529",59.9330124944272,"our_experiment_2",1,44,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41806924945824,"2018_Jul_10_1529",59.9330124944272,"our_experiment_2",1,44,NA
"","",NA,NA,NA,NA,"space",4.12339070969267,NA,NA,"2018_Jul_10_1530",59.9330124944272,"our_experiment_2",1,45,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28524546787962,"2018_Jul_10_1530",59.9330124944272,"our_experiment_2",1,45,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04093094528578,"2018_Jul_10_1530",59.9330124944272,"our_experiment_2",1,45,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59977643346153,"2018_Jul_10_1530",59.9330124944272,"our_experiment_2",1,45,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45464467870295,"2018_Jul_10_1530",59.9330124944272,"our_experiment_2",1,45,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33890304826759,"2018_Jul_10_1530",59.9330124944272,"our_experiment_2",1,45,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48267781957351,"2018_Jul_10_1530",59.9330124944272,"our_experiment_2",1,45,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47025898253173,"2018_Jul_10_1530",59.9330124944272,"our_experiment_2",1,45,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41519532589391,"2018_Jul_10_1530",59.9330124944272,"our_experiment_2",1,45,NA
"","",NA,NA,NA,NA,"space",4.10091203615142,NA,NA,"2018_Jul_10_1531",59.9330124944272,"our_experiment_2",1,46,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28226606520303,"2018_Jul_10_1531",59.9330124944272,"our_experiment_2",1,46,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04330177984685,"2018_Jul_10_1531",59.9330124944272,"our_experiment_2",1,46,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.60060953070633,"2018_Jul_10_1531",59.9330124944272,"our_experiment_2",1,46,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45114728105664,"2018_Jul_10_1531",59.9330124944272,"our_experiment_2",1,46,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33806244593598,"2018_Jul_10_1531",59.9330124944272,"our_experiment_2",1,46,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48278234097399,"2018_Jul_10_1531",59.9330124944272,"our_experiment_2",1,46,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47383437315002,"2018_Jul_10_1531",59.9330124944272,"our_experiment_2",1,46,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41710854039974,"2018_Jul_10_1531",59.9330124944272,"our_experiment_2",1,46,NA
"","",NA,NA,NA,NA,"space",4.03271071136641,NA,NA,"2018_Jul_10_1532",59.9330124944272,"our_experiment_2",1,47,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28394456607327,"2018_Jul_10_1532",59.9330124944272,"our_experiment_2",1,47,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04377894114144,"2018_Jul_10_1532",59.9330124944272,"our_experiment_2",1,47,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.60096242889725,"2018_Jul_10_1532",59.9330124944272,"our_experiment_2",1,47,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45080950842351,"2018_Jul_10_1532",59.9330124944272,"our_experiment_2",1,47,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33674630018473,"2018_Jul_10_1532",59.9330124944272,"our_experiment_2",1,47,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.4857684761785,"2018_Jul_10_1532",59.9330124944272,"our_experiment_2",1,47,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47140246432312,"2018_Jul_10_1532",59.9330124944272,"our_experiment_2",1,47,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41725188561901,"2018_Jul_10_1532",59.9330124944272,"our_experiment_2",1,47,NA
"","",NA,NA,NA,NA,"space",4.02578198348677,NA,NA,"2018_Jul_10_1533",59.9330124944272,"our_experiment_2",1,48,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.2860267964609,"2018_Jul_10_1533",59.9330124944272,"our_experiment_2",1,48,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04515545383431,"2018_Jul_10_1533",59.9330124944272,"our_experiment_2",1,48,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59851454938762,"2018_Jul_10_1533",59.9330124944272,"our_experiment_2",1,48,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45538722048998,"2018_Jul_10_1533",59.9330124944272,"our_experiment_2",1,48,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.3377709153451,"2018_Jul_10_1533",59.9330124944272,"our_experiment_2",1,48,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48308307847977,"2018_Jul_10_1533",59.9330124944272,"our_experiment_2",1,48,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47406940662339,"2018_Jul_10_1533",59.9330124944272,"our_experiment_2",1,48,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41512865440771,"2018_Jul_10_1533",59.9330124944272,"our_experiment_2",1,48,NA
"","",NA,NA,NA,NA,"space",4.1198144295186,NA,NA,"2018_Jul_10_1534",59.9330124944272,"our_experiment_2",1,49,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28178118868396,"2018_Jul_10_1534",59.9330124944272,"our_experiment_2",1,49,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04085196288712,"2018_Jul_10_1534",59.9330124944272,"our_experiment_2",1,49,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59964889134169,"2018_Jul_10_1534",59.9330124944272,"our_experiment_2",1,49,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45328376501687,"2018_Jul_10_1534",59.9330124944272,"our_experiment_2",1,49,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33575760423206,"2018_Jul_10_1534",59.9330124944272,"our_experiment_2",1,49,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48375062801503,"2018_Jul_10_1534",59.9330124944272,"our_experiment_2",1,49,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.4710723634135,"2018_Jul_10_1534",59.9330124944272,"our_experiment_2",1,49,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41719707300253,"2018_Jul_10_1534",59.9330124944272,"our_experiment_2",1,49,NA
"","",NA,NA,NA,NA,"space",4.02143125119018,NA,NA,"2018_Jul_10_1450",59.9330124944272,"our_experiment_2",1,5,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.2836197828196,"2018_Jul_10_1450",59.9330124944272,"our_experiment_2",1,5,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04289737733528,"2018_Jul_10_1450",59.9330124944272,"our_experiment_2",1,5,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,2,1.60055918334313,"2018_Jul_10_1450",59.9330124944272,"our_experiment_2",1,5,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.4512651970502,"2018_Jul_10_1450",59.9330124944272,"our_experiment_2",1,5,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33697480850182,"2018_Jul_10_1450",59.9330124944272,"our_experiment_2",1,5,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48496692725606,"2018_Jul_10_1450",59.9330124944272,"our_experiment_2",1,5,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.4725959401302,"2018_Jul_10_1450",59.9330124944272,"our_experiment_2",1,5,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41711000707969,"2018_Jul_10_1450",59.9330124944272,"our_experiment_2",1,5,NA
"","",NA,NA,NA,NA,"space",4.02559320082339,NA,NA,"2018_Jul_10_1535",59.9330124944272,"our_experiment_2",1,50,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28182065853737,"2018_Jul_10_1535",59.9330124944272,"our_experiment_2",1,50,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04464229501039,"2018_Jul_10_1535",59.9330124944272,"our_experiment_2",1,50,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.5987689475216,"2018_Jul_10_1535",59.9330124944272,"our_experiment_2",1,50,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45110446380861,"2018_Jul_10_1535",59.9330124944272,"our_experiment_2",1,50,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33644836106896,"2018_Jul_10_1535",59.9330124944272,"our_experiment_2",1,50,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48402339983955,"2018_Jul_10_1535",59.9330124944272,"our_experiment_2",1,50,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47042490416132,"2018_Jul_10_1535",59.9330124944272,"our_experiment_2",1,50,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41511405973732,"2018_Jul_10_1535",59.9330124944272,"our_experiment_2",1,50,NA
"","",NA,NA,NA,NA,"space",4.04616351596056,NA,NA,"2018_Jul_10_1536",59.9330124944272,"our_experiment_2",1,51,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28167486873716,"2018_Jul_10_1536",59.9330124944272,"our_experiment_2",1,51,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04181897444166,"2018_Jul_10_1536",59.9330124944272,"our_experiment_2",1,51,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.59761065123044,"2018_Jul_10_1536",59.9330124944272,"our_experiment_2",1,51,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45484773873277,"2018_Jul_10_1536",59.9330124944272,"our_experiment_2",1,51,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33477294842713,"2018_Jul_10_1536",59.9330124944272,"our_experiment_2",1,51,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48580591253527,"2018_Jul_10_1536",59.9330124944272,"our_experiment_2",1,51,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47250087958165,"2018_Jul_10_1536",59.9330124944272,"our_experiment_2",1,51,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41550177654289,"2018_Jul_10_1536",59.9330124944272,"our_experiment_2",1,51,NA
"","",NA,NA,NA,NA,"space",4.02780112402996,NA,NA,"2018_Jul_10_1537",59.9330124944272,"our_experiment_2",1,52,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28572681729607,"2018_Jul_10_1537",59.9330124944272,"our_experiment_2",1,52,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04062201826945,"2018_Jul_10_1537",59.9330124944272,"our_experiment_2",1,52,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59760307092778,"2018_Jul_10_1537",59.9330124944272,"our_experiment_2",1,52,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45315992298089,"2018_Jul_10_1537",59.9330124944272,"our_experiment_2",1,52,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33791965089254,"2018_Jul_10_1537",59.9330124944272,"our_experiment_2",1,52,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48638078052066,"2018_Jul_10_1537",59.9330124944272,"our_experiment_2",1,52,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47201670048051,"2018_Jul_10_1537",59.9330124944272,"our_experiment_2",1,52,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41698655101694,"2018_Jul_10_1537",59.9330124944272,"our_experiment_2",1,52,NA
"","",NA,NA,NA,NA,"space",4.06500499761342,NA,NA,"2018_Jul_10_1538",59.9330124944272,"our_experiment_2",1,53,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28614063922837,"2018_Jul_10_1538",59.9330124944272,"our_experiment_2",1,53,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04248304090276,"2018_Jul_10_1538",59.9330124944272,"our_experiment_2",1,53,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.60001694706343,"2018_Jul_10_1538",59.9330124944272,"our_experiment_2",1,53,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45264758623168,"2018_Jul_10_1538",59.9330124944272,"our_experiment_2",1,53,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33935367025621,"2018_Jul_10_1538",59.9330124944272,"our_experiment_2",1,53,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48318128154799,"2018_Jul_10_1538",59.9330124944272,"our_experiment_2",1,53,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47148963615298,"2018_Jul_10_1538",59.9330124944272,"our_experiment_2",1,53,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41647226016447,"2018_Jul_10_1538",59.9330124944272,"our_experiment_2",1,53,NA
"","",NA,NA,NA,NA,"space",4.0701058004391,NA,NA,"2018_Jul_10_1539",59.9330124944272,"our_experiment_2",1,54,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28287268396392,"2018_Jul_10_1539",59.9330124944272,"our_experiment_2",1,54,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04369108791538,"2018_Jul_10_1539",59.9330124944272,"our_experiment_2",1,54,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59834008959159,"2018_Jul_10_1539",59.9330124944272,"our_experiment_2",1,54,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45060720288679,"2018_Jul_10_1539",59.9330124944272,"our_experiment_2",1,54,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33779002819434,"2018_Jul_10_1539",59.9330124944272,"our_experiment_2",1,54,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48567123697326,"2018_Jul_10_1539",59.9330124944272,"our_experiment_2",1,54,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47157569913305,"2018_Jul_10_1539",59.9330124944272,"our_experiment_2",1,54,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41732679710723,"2018_Jul_10_1539",59.9330124944272,"our_experiment_2",1,54,NA
"","",NA,NA,NA,NA,"space",4.15148047238531,NA,NA,"2018_Jul_10_1540",59.9330124944272,"our_experiment_2",1,55,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28352641995959,"2018_Jul_10_1540",59.9330124944272,"our_experiment_2",1,55,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04119193904884,"2018_Jul_10_1540",59.9330124944272,"our_experiment_2",1,55,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.5992574044399,"2018_Jul_10_1540",59.9330124944272,"our_experiment_2",1,55,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45482544694841,"2018_Jul_10_1540",59.9330124944272,"our_experiment_2",1,55,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33540123913959,"2018_Jul_10_1540",59.9330124944272,"our_experiment_2",1,55,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48353803144693,"2018_Jul_10_1540",59.9330124944272,"our_experiment_2",1,55,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.46996075181626,"2018_Jul_10_1540",59.9330124944272,"our_experiment_2",1,55,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41795386285819,"2018_Jul_10_1540",59.9330124944272,"our_experiment_2",1,55,NA
"","",NA,NA,NA,NA,"space",4.14800521647441,NA,NA,"2018_Jul_10_1541",59.9330124944272,"our_experiment_2",1,56,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28188626461439,"2018_Jul_10_1541",59.9330124944272,"our_experiment_2",1,56,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04449426805116,"2018_Jul_10_1541",59.9330124944272,"our_experiment_2",1,56,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59932093751021,"2018_Jul_10_1541",59.9330124944272,"our_experiment_2",1,56,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.4526095691286,"2018_Jul_10_1541",59.9330124944272,"our_experiment_2",1,56,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33557430222556,"2018_Jul_10_1541",59.9330124944272,"our_experiment_2",1,56,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48192552285828,"2018_Jul_10_1541",59.9330124944272,"our_experiment_2",1,56,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47265444781817,"2018_Jul_10_1541",59.9330124944272,"our_experiment_2",1,56,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41623171562888,"2018_Jul_10_1541",59.9330124944272,"our_experiment_2",1,56,NA
"","",NA,NA,NA,NA,"space",4.0850603590799,NA,NA,"2018_Jul_10_1542",59.9330124944272,"our_experiment_2",1,57,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28405334275812,"2018_Jul_10_1542",59.9330124944272,"our_experiment_2",1,57,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.0434648707021,"2018_Jul_10_1542",59.9330124944272,"our_experiment_2",1,57,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59809314919561,"2018_Jul_10_1542",59.9330124944272,"our_experiment_2",1,57,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45101629843935,"2018_Jul_10_1542",59.9330124944272,"our_experiment_2",1,57,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33668156864978,"2018_Jul_10_1542",59.9330124944272,"our_experiment_2",1,57,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48551851892546,"2018_Jul_10_1542",59.9330124944272,"our_experiment_2",1,57,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47163146531619,"2018_Jul_10_1542",59.9330124944272,"our_experiment_2",1,57,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41399115204364,"2018_Jul_10_1542",59.9330124944272,"our_experiment_2",1,57,NA
"","",NA,NA,NA,NA,"space",4.12688098980653,NA,NA,"2018_Jul_10_1543",59.9330124944272,"our_experiment_2",1,58,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28350358411036,"2018_Jul_10_1543",59.9330124944272,"our_experiment_2",1,58,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.0444930538632,"2018_Jul_10_1543",59.9330124944272,"our_experiment_2",1,58,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.60124512971193,"2018_Jul_10_1543",59.9330124944272,"our_experiment_2",1,58,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45313560445346,"2018_Jul_10_1543",59.9330124944272,"our_experiment_2",1,58,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33634081576839,"2018_Jul_10_1543",59.9330124944272,"our_experiment_2",1,58,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48542888266742,"2018_Jul_10_1543",59.9330124944272,"our_experiment_2",1,58,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47391869767644,"2018_Jul_10_1543",59.9330124944272,"our_experiment_2",1,58,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41508587848805,"2018_Jul_10_1543",59.9330124944272,"our_experiment_2",1,58,NA
"","",NA,NA,NA,NA,"space",4.11778812457504,NA,NA,"2018_Jul_10_1544",59.9330124944272,"our_experiment_2",1,59,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28586366557702,"2018_Jul_10_1544",59.9330124944272,"our_experiment_2",1,59,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04325394610353,"2018_Jul_10_1544",59.9330124944272,"our_experiment_2",1,59,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59947777298018,"2018_Jul_10_1544",59.9330124944272,"our_experiment_2",1,59,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45220990834683,"2018_Jul_10_1544",59.9330124944272,"our_experiment_2",1,59,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33890371359512,"2018_Jul_10_1544",59.9330124944272,"our_experiment_2",1,59,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48264798118398,"2018_Jul_10_1544",59.9330124944272,"our_experiment_2",1,59,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,4,1.47100987428576,"2018_Jul_10_1544",59.9330124944272,"our_experiment_2",1,59,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41372081102803,"2018_Jul_10_1544",59.9330124944272,"our_experiment_2",1,59,NA
"","",NA,NA,NA,NA,"space",4.12418503026003,NA,NA,"2018_Jul_10_1451",59.9330124944272,"our_experiment_2",1,6,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28421033209525,"2018_Jul_10_1451",59.9330124944272,"our_experiment_2",1,6,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04177976038605,"2018_Jul_10_1451",59.9330124944272,"our_experiment_2",1,6,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59688908870667,"2018_Jul_10_1451",59.9330124944272,"our_experiment_2",1,6,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45294218186438,"2018_Jul_10_1451",59.9330124944272,"our_experiment_2",1,6,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,7,1.33893415175565,"2018_Jul_10_1451",59.9330124944272,"our_experiment_2",1,6,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48573042685315,"2018_Jul_10_1451",59.9330124944272,"our_experiment_2",1,6,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47004631470293,"2018_Jul_10_1451",59.9330124944272,"our_experiment_2",1,6,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41406104758754,"2018_Jul_10_1451",59.9330124944272,"our_experiment_2",1,6,NA
"","",NA,NA,NA,NA,"space",4.04486582167449,NA,NA,"2018_Jul_10_1545",59.9330124944272,"our_experiment_2",1,60,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28162629824467,"2018_Jul_10_1545",59.9330124944272,"our_experiment_2",1,60,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04439455168284,"2018_Jul_10_1545",59.9330124944272,"our_experiment_2",1,60,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59728744073808,"2018_Jul_10_1545",59.9330124944272,"our_experiment_2",1,60,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45311392142549,"2018_Jul_10_1545",59.9330124944272,"our_experiment_2",1,60,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33655995664261,"2018_Jul_10_1545",59.9330124944272,"our_experiment_2",1,60,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48595829458833,"2018_Jul_10_1545",59.9330124944272,"our_experiment_2",1,60,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,5,1.47321272959299,"2018_Jul_10_1545",59.9330124944272,"our_experiment_2",1,60,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41716382378638,"2018_Jul_10_1545",59.9330124944272,"our_experiment_2",1,60,NA
"","",NA,NA,NA,NA,"space",4.11774076992026,NA,NA,"2018_Jul_10_1546",59.9330124944272,"our_experiment_2",1,61,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28560201096572,"2018_Jul_10_1546",59.9330124944272,"our_experiment_2",1,61,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04382158751041,"2018_Jul_10_1546",59.9330124944272,"our_experiment_2",1,61,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.5982478160616,"2018_Jul_10_1546",59.9330124944272,"our_experiment_2",1,61,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.4547773852922,"2018_Jul_10_1546",59.9330124944272,"our_experiment_2",1,61,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33585019883364,"2018_Jul_10_1546",59.9330124944272,"our_experiment_2",1,61,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48601335790642,"2018_Jul_10_1546",59.9330124944272,"our_experiment_2",1,61,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47287798527442,"2018_Jul_10_1546",59.9330124944272,"our_experiment_2",1,61,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41794648123458,"2018_Jul_10_1546",59.9330124944272,"our_experiment_2",1,61,NA
"","",NA,NA,NA,NA,"space",4.0937469143772,NA,NA,"2018_Jul_10_1547",59.9330124944272,"our_experiment_2",1,62,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28452138823457,"2018_Jul_10_1547",59.9330124944272,"our_experiment_2",1,62,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04235482489131,"2018_Jul_10_1547",59.9330124944272,"our_experiment_2",1,62,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.60051133114398,"2018_Jul_10_1547",59.9330124944272,"our_experiment_2",1,62,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45340539647564,"2018_Jul_10_1547",59.9330124944272,"our_experiment_2",1,62,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33795701966546,"2018_Jul_10_1547",59.9330124944272,"our_experiment_2",1,62,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48554891905002,"2018_Jul_10_1547",59.9330124944272,"our_experiment_2",1,62,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.4740345011577,"2018_Jul_10_1547",59.9330124944272,"our_experiment_2",1,62,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41398838608488,"2018_Jul_10_1547",59.9330124944272,"our_experiment_2",1,62,NA
"","",NA,NA,NA,NA,"space",4.05541065631902,NA,NA,"2018_Jul_10_1548",59.9330124944272,"our_experiment_2",1,63,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28509826263078,"2018_Jul_10_1548",59.9330124944272,"our_experiment_2",1,63,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.0453371746596,"2018_Jul_10_1548",59.9330124944272,"our_experiment_2",1,63,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59841840330325,"2018_Jul_10_1548",59.9330124944272,"our_experiment_2",1,63,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45466838308834,"2018_Jul_10_1548",59.9330124944272,"our_experiment_2",1,63,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33479024954364,"2018_Jul_10_1548",59.9330124944272,"our_experiment_2",1,63,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48457560294978,"2018_Jul_10_1548",59.9330124944272,"our_experiment_2",1,63,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47153104314469,"2018_Jul_10_1548",59.9330124944272,"our_experiment_2",1,63,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41738259712867,"2018_Jul_10_1548",59.9330124944272,"our_experiment_2",1,63,NA
"","",NA,NA,NA,NA,"space",4.10512589462353,NA,NA,"2018_Jul_10_1549",59.9330124944272,"our_experiment_2",1,64,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28437728231289,"2018_Jul_10_1549",59.9330124944272,"our_experiment_2",1,64,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04378563125692,"2018_Jul_10_1549",59.9330124944272,"our_experiment_2",1,64,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59929853236452,"2018_Jul_10_1549",59.9330124944272,"our_experiment_2",1,64,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45342832250074,"2018_Jul_10_1549",59.9330124944272,"our_experiment_2",1,64,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33814358218983,"2018_Jul_10_1549",59.9330124944272,"our_experiment_2",1,64,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48563211980909,"2018_Jul_10_1549",59.9330124944272,"our_experiment_2",1,64,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47408375142813,"2018_Jul_10_1549",59.9330124944272,"our_experiment_2",1,64,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41616050411947,"2018_Jul_10_1549",59.9330124944272,"our_experiment_2",1,64,NA
"","",NA,NA,NA,NA,"space",4.12750742052505,NA,NA,"2018_Jul_10_1550",59.9330124944272,"our_experiment_2",1,65,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28625566151068,"2018_Jul_10_1550",59.9330124944272,"our_experiment_2",1,65,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.0410484996181,"2018_Jul_10_1550",59.9330124944272,"our_experiment_2",1,65,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.60047435531132,"2018_Jul_10_1550",59.9330124944272,"our_experiment_2",1,65,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.453097549605,"2018_Jul_10_1550",59.9330124944272,"our_experiment_2",1,65,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33467660958022,"2018_Jul_10_1550",59.9330124944272,"our_experiment_2",1,65,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48618861472197,"2018_Jul_10_1550",59.9330124944272,"our_experiment_2",1,65,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47003128730841,"2018_Jul_10_1550",59.9330124944272,"our_experiment_2",1,65,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41396806802638,"2018_Jul_10_1550",59.9330124944272,"our_experiment_2",1,65,NA
"","",NA,NA,NA,NA,"space",4.0383367504696,NA,NA,"2018_Jul_10_1551",59.9330124944272,"our_experiment_2",1,66,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28200164132155,"2018_Jul_10_1551",59.9330124944272,"our_experiment_2",1,66,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04470876685642,"2018_Jul_10_1551",59.9330124944272,"our_experiment_2",1,66,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59938558354303,"2018_Jul_10_1551",59.9330124944272,"our_experiment_2",1,66,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45372314257063,"2018_Jul_10_1551",59.9330124944272,"our_experiment_2",1,66,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33589270026945,"2018_Jul_10_1551",59.9330124944272,"our_experiment_2",1,66,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.4828686299067,"2018_Jul_10_1551",59.9330124944272,"our_experiment_2",1,66,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47205789672323,"2018_Jul_10_1551",59.9330124944272,"our_experiment_2",1,66,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41634915079176,"2018_Jul_10_1551",59.9330124944272,"our_experiment_2",1,66,NA
"","",NA,NA,NA,NA,"space",4.01464851924504,NA,NA,"2018_Jul_10_1552",59.9330124944272,"our_experiment_2",1,67,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28595566464998,"2018_Jul_10_1552",59.9330124944272,"our_experiment_2",1,67,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04131501631662,"2018_Jul_10_1552",59.9330124944272,"our_experiment_2",1,67,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.60063410439789,"2018_Jul_10_1552",59.9330124944272,"our_experiment_2",1,67,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45070206356384,"2018_Jul_10_1552",59.9330124944272,"our_experiment_2",1,67,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33731264237873,"2018_Jul_10_1552",59.9330124944272,"our_experiment_2",1,67,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.4820531388551,"2018_Jul_10_1552",59.9330124944272,"our_experiment_2",1,67,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47235959918164,"2018_Jul_10_1552",59.9330124944272,"our_experiment_2",1,67,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41783585821763,"2018_Jul_10_1552",59.9330124944272,"our_experiment_2",1,67,NA
"","",NA,NA,NA,NA,"space",4.05269595393861,NA,NA,"2018_Jul_10_1553",59.9330124944272,"our_experiment_2",1,68,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28359615621827,"2018_Jul_10_1553",59.9330124944272,"our_experiment_2",1,68,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04535556713231,"2018_Jul_10_1553",59.9330124944272,"our_experiment_2",1,68,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59991104920357,"2018_Jul_10_1553",59.9330124944272,"our_experiment_2",1,68,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45213017323874,"2018_Jul_10_1553",59.9330124944272,"our_experiment_2",1,68,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33840628121644,"2018_Jul_10_1553",59.9330124944272,"our_experiment_2",1,68,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48596099202894,"2018_Jul_10_1553",59.9330124944272,"our_experiment_2",1,68,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47211986860037,"2018_Jul_10_1553",59.9330124944272,"our_experiment_2",1,68,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41756627151296,"2018_Jul_10_1553",59.9330124944272,"our_experiment_2",1,68,NA
"","",NA,NA,NA,NA,"space",4.01941649491897,NA,NA,"2018_Jul_10_1554",59.9330124944272,"our_experiment_2",1,69,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28620284902975,"2018_Jul_10_1554",59.9330124944272,"our_experiment_2",1,69,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,5,2.04175157719553,"2018_Jul_10_1554",59.9330124944272,"our_experiment_2",1,69,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.60064119863734,"2018_Jul_10_1554",59.9330124944272,"our_experiment_2",1,69,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45345266383365,"2018_Jul_10_1554",59.9330124944272,"our_experiment_2",1,69,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33717132333368,"2018_Jul_10_1554",59.9330124944272,"our_experiment_2",1,69,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48314396088496,"2018_Jul_10_1554",59.9330124944272,"our_experiment_2",1,69,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47406795393117,"2018_Jul_10_1554",59.9330124944272,"our_experiment_2",1,69,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41546418740526,"2018_Jul_10_1554",59.9330124944272,"our_experiment_2",1,69,NA
"","",NA,NA,NA,NA,"space",4.14022854670504,NA,NA,"2018_Jul_10_1452",59.9330124944272,"our_experiment_2",1,7,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28459604652002,"2018_Jul_10_1452",59.9330124944272,"our_experiment_2",1,7,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.0421629427854,"2018_Jul_10_1452",59.9330124944272,"our_experiment_2",1,7,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59835799883418,"2018_Jul_10_1452",59.9330124944272,"our_experiment_2",1,7,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.452371995534,"2018_Jul_10_1452",59.9330124944272,"our_experiment_2",1,7,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33729324002303,"2018_Jul_10_1452",59.9330124944272,"our_experiment_2",1,7,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48374749176055,"2018_Jul_10_1452",59.9330124944272,"our_experiment_2",1,7,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47397348731309,"2018_Jul_10_1452",59.9330124944272,"our_experiment_2",1,7,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,6,1.41806348993517,"2018_Jul_10_1452",59.9330124944272,"our_experiment_2",1,7,NA
"","",NA,NA,NA,NA,"space",4.1409781800027,NA,NA,"2018_Jul_10_1555",59.9330124944272,"our_experiment_2",1,70,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28361842135601,"2018_Jul_10_1555",59.9330124944272,"our_experiment_2",1,70,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04096849773191,"2018_Jul_10_1555",59.9330124944272,"our_experiment_2",1,70,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59715736833625,"2018_Jul_10_1555",59.9330124944272,"our_experiment_2",1,70,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,2,1.45516963889897,"2018_Jul_10_1555",59.9330124944272,"our_experiment_2",1,70,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33627636093907,"2018_Jul_10_1555",59.9330124944272,"our_experiment_2",1,70,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48196788792051,"2018_Jul_10_1555",59.9330124944272,"our_experiment_2",1,70,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.46999432957731,"2018_Jul_10_1555",59.9330124944272,"our_experiment_2",1,70,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41751631952412,"2018_Jul_10_1555",59.9330124944272,"our_experiment_2",1,70,NA
"","",NA,NA,NA,NA,"space",4.1056216548667,NA,NA,"2018_Jul_10_1556",59.9330124944272,"our_experiment_2",1,71,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28633259722851,"2018_Jul_10_1556",59.9330124944272,"our_experiment_2",1,71,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04244283849336,"2018_Jul_10_1556",59.9330124944272,"our_experiment_2",1,71,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59664032583348,"2018_Jul_10_1556",59.9330124944272,"our_experiment_2",1,71,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45065241987035,"2018_Jul_10_1556",59.9330124944272,"our_experiment_2",1,71,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33463703276478,"2018_Jul_10_1556",59.9330124944272,"our_experiment_2",1,71,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48581522441842,"2018_Jul_10_1556",59.9330124944272,"our_experiment_2",1,71,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,4,1.47289842119813,"2018_Jul_10_1556",59.9330124944272,"our_experiment_2",1,71,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41623921497576,"2018_Jul_10_1556",59.9330124944272,"our_experiment_2",1,71,NA
"","",NA,NA,NA,NA,"space",4.0209221324979,NA,NA,"2018_Jul_10_1557",59.9330124944272,"our_experiment_2",1,72,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.28290774811134,"2018_Jul_10_1557",59.9330124944272,"our_experiment_2",1,72,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04296817892268,"2018_Jul_10_1557",59.9330124944272,"our_experiment_2",1,72,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59964058884755,"2018_Jul_10_1557",59.9330124944272,"our_experiment_2",1,72,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45124901083522,"2018_Jul_10_1557",59.9330124944272,"our_experiment_2",1,72,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33542481442243,"2018_Jul_10_1557",59.9330124944272,"our_experiment_2",1,72,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48620575843304,"2018_Jul_10_1557",59.9330124944272,"our_experiment_2",1,72,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47338332692869,"2018_Jul_10_1557",59.9330124944272,"our_experiment_2",1,72,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41379789546877,"2018_Jul_10_1557",59.9330124944272,"our_experiment_2",1,72,NA
"","",NA,NA,NA,NA,"space",4.12579726135558,NA,NA,"2018_Jul_10_1558",59.9330124944272,"our_experiment_2",1,73,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28294034000859,"2018_Jul_10_1558",59.9330124944272,"our_experiment_2",1,73,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.0425796125073,"2018_Jul_10_1558",59.9330124944272,"our_experiment_2",1,73,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59761595446505,"2018_Jul_10_1558",59.9330124944272,"our_experiment_2",1,73,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45381026969589,"2018_Jul_10_1558",59.9330124944272,"our_experiment_2",1,73,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33602874542326,"2018_Jul_10_1558",59.9330124944272,"our_experiment_2",1,73,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48363263421953,"2018_Jul_10_1558",59.9330124944272,"our_experiment_2",1,73,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,4,1.47113210418001,"2018_Jul_10_1558",59.9330124944272,"our_experiment_2",1,73,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.4177120185744,"2018_Jul_10_1558",59.9330124944272,"our_experiment_2",1,73,NA
"","",NA,NA,NA,NA,"space",4.08997868523708,NA,NA,"2018_Jul_10_1559",59.9330124944272,"our_experiment_2",1,74,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28607678552791,"2018_Jul_10_1559",59.9330124944272,"our_experiment_2",1,74,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04311975571178,"2018_Jul_10_1559",59.9330124944272,"our_experiment_2",1,74,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59850019625574,"2018_Jul_10_1559",59.9330124944272,"our_experiment_2",1,74,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,1,1.45412605056651,"2018_Jul_10_1559",59.9330124944272,"our_experiment_2",1,74,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33492347801588,"2018_Jul_10_1559",59.9330124944272,"our_experiment_2",1,74,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48208615537845,"2018_Jul_10_1559",59.9330124944272,"our_experiment_2",1,74,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47098601658866,"2018_Jul_10_1559",59.9330124944272,"our_experiment_2",1,74,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41582001473829,"2018_Jul_10_1559",59.9330124944272,"our_experiment_2",1,74,NA
"","",NA,NA,NA,NA,"space",4.07977113862099,NA,NA,"2018_Jul_10_1600",59.9330124944272,"our_experiment_2",1,75,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.28276912912093,"2018_Jul_10_1600",59.9330124944272,"our_experiment_2",1,75,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04165644361265,"2018_Jul_10_1600",59.9330124944272,"our_experiment_2",1,75,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.5981135945607,"2018_Jul_10_1600",59.9330124944272,"our_experiment_2",1,75,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45395671007372,"2018_Jul_10_1600",59.9330124944272,"our_experiment_2",1,75,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.3389095818527,"2018_Jul_10_1600",59.9330124944272,"our_experiment_2",1,75,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48207194799557,"2018_Jul_10_1600",59.9330124944272,"our_experiment_2",1,75,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,5,1.47177978610247,"2018_Jul_10_1600",59.9330124944272,"our_experiment_2",1,75,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41376377351433,"2018_Jul_10_1600",59.9330124944272,"our_experiment_2",1,75,NA
"","",NA,NA,NA,NA,"space",4.08374973484518,NA,NA,"2018_Jul_10_1601",59.9330124944272,"our_experiment_2",1,76,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.28196475784406,"2018_Jul_10_1601",59.9330124944272,"our_experiment_2",1,76,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04236214846298,"2018_Jul_10_1601",59.9330124944272,"our_experiment_2",1,76,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59674238859825,"2018_Jul_10_1601",59.9330124944272,"our_experiment_2",1,76,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45334153487496,"2018_Jul_10_1601",59.9330124944272,"our_experiment_2",1,76,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33865525304377,"2018_Jul_10_1601",59.9330124944272,"our_experiment_2",1,76,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,6,1.48183775573447,"2018_Jul_10_1601",59.9330124944272,"our_experiment_2",1,76,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47240447935238,"2018_Jul_10_1601",59.9330124944272,"our_experiment_2",1,76,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41752190596759,"2018_Jul_10_1601",59.9330124944272,"our_experiment_2",1,76,NA
"","",NA,NA,NA,NA,"space",4.02192506461842,NA,NA,"2018_Jul_10_1602",59.9330124944272,"our_experiment_2",1,77,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,2,4.28508001324497,"2018_Jul_10_1602",59.9330124944272,"our_experiment_2",1,77,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04230867370442,"2018_Jul_10_1602",59.9330124944272,"our_experiment_2",1,77,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59955219567381,"2018_Jul_10_1602",59.9330124944272,"our_experiment_2",1,77,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45289976333007,"2018_Jul_10_1602",59.9330124944272,"our_experiment_2",1,77,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33488833790719,"2018_Jul_10_1602",59.9330124944272,"our_experiment_2",1,77,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48236387037449,"2018_Jul_10_1602",59.9330124944272,"our_experiment_2",1,77,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,4,1.47000983869769,"2018_Jul_10_1602",59.9330124944272,"our_experiment_2",1,77,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41680569474027,"2018_Jul_10_1602",59.9330124944272,"our_experiment_2",1,77,NA
"","",NA,NA,NA,NA,"space",4.15669362729112,NA,NA,"2018_Jul_10_1603",59.9330124944272,"our_experiment_2",1,78,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28307172398269,"2018_Jul_10_1603",59.9330124944272,"our_experiment_2",1,78,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04533848983049,"2018_Jul_10_1603",59.9330124944272,"our_experiment_2",1,78,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59674116674252,"2018_Jul_10_1603",59.9330124944272,"our_experiment_2",1,78,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45537082028277,"2018_Jul_10_1603",59.9330124944272,"our_experiment_2",1,78,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33761616612524,"2018_Jul_10_1603",59.9330124944272,"our_experiment_2",1,78,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48341639721431,"2018_Jul_10_1603",59.9330124944272,"our_experiment_2",1,78,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47302535884753,"2018_Jul_10_1603",59.9330124944272,"our_experiment_2",1,78,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41536022565775,"2018_Jul_10_1603",59.9330124944272,"our_experiment_2",1,78,NA
"","",NA,NA,NA,NA,"space",4.04926001503399,NA,NA,"2018_Jul_10_1604",59.9330124944272,"our_experiment_2",1,79,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28545882539377,"2018_Jul_10_1604",59.9330124944272,"our_experiment_2",1,79,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04516217977852,"2018_Jul_10_1604",59.9330124944272,"our_experiment_2",1,79,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.60115360674113,"2018_Jul_10_1604",59.9330124944272,"our_experiment_2",1,79,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45102046964094,"2018_Jul_10_1604",59.9330124944272,"our_experiment_2",1,79,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33765683567375,"2018_Jul_10_1604",59.9330124944272,"our_experiment_2",1,79,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48530809087642,"2018_Jul_10_1604",59.9330124944272,"our_experiment_2",1,79,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,5,1.47155655581504,"2018_Jul_10_1604",59.9330124944272,"our_experiment_2",1,79,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41587963757701,"2018_Jul_10_1604",59.9330124944272,"our_experiment_2",1,79,NA
"","",NA,NA,NA,NA,"space",4.05466526778775,NA,NA,"2018_Jul_10_1453",59.9330124944272,"our_experiment_2",1,8,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28400953551121,"2018_Jul_10_1453",59.9330124944272,"our_experiment_2",1,8,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04341915400848,"2018_Jul_10_1453",59.9330124944272,"our_experiment_2",1,8,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59959035116769,"2018_Jul_10_1453",59.9330124944272,"our_experiment_2",1,8,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45434191678427,"2018_Jul_10_1453",59.9330124944272,"our_experiment_2",1,8,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33563751953281,"2018_Jul_10_1453",59.9330124944272,"our_experiment_2",1,8,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48498133072406,"2018_Jul_10_1453",59.9330124944272,"our_experiment_2",1,8,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47291408157833,"2018_Jul_10_1453",59.9330124944272,"our_experiment_2",1,8,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41619036841914,"2018_Jul_10_1453",59.9330124944272,"our_experiment_2",1,8,NA
"","",NA,NA,NA,NA,"space",4.05120038646246,NA,NA,"2018_Jul_10_1605",59.9330124944272,"our_experiment_2",1,80,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28306905956119,"2018_Jul_10_1605",59.9330124944272,"our_experiment_2",1,80,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04063924231492,"2018_Jul_10_1605",59.9330124944272,"our_experiment_2",1,80,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.59923071020059,"2018_Jul_10_1605",59.9330124944272,"our_experiment_2",1,80,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45220370019414,"2018_Jul_10_1605",59.9330124944272,"our_experiment_2",1,80,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33806066939048,"2018_Jul_10_1605",59.9330124944272,"our_experiment_2",1,80,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48224130681902,"2018_Jul_10_1605",59.9330124944272,"our_experiment_2",1,80,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47072761231847,"2018_Jul_10_1605",59.9330124944272,"our_experiment_2",1,80,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41615207513236,"2018_Jul_10_1605",59.9330124944272,"our_experiment_2",1,80,NA
"","",NA,NA,NA,NA,"space",4.13928855791798,NA,NA,"2018_Jul_10_1606",59.9330124944272,"our_experiment_2",1,81,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28582396579012,"2018_Jul_10_1606",59.9330124944272,"our_experiment_2",1,81,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04270826188326,"2018_Jul_10_1606",59.9330124944272,"our_experiment_2",1,81,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59729121024646,"2018_Jul_10_1606",59.9330124944272,"our_experiment_2",1,81,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45218055048734,"2018_Jul_10_1606",59.9330124944272,"our_experiment_2",1,81,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.3377432678666,"2018_Jul_10_1606",59.9330124944272,"our_experiment_2",1,81,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48387642858438,"2018_Jul_10_1606",59.9330124944272,"our_experiment_2",1,81,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,5,1.47371955799125,"2018_Jul_10_1606",59.9330124944272,"our_experiment_2",1,81,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41744279407635,"2018_Jul_10_1606",59.9330124944272,"our_experiment_2",1,81,NA
"","",NA,NA,NA,NA,"space",4.15669447032253,NA,NA,"2018_Jul_10_1607",59.9330124944272,"our_experiment_2",1,82,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28544007691033,"2018_Jul_10_1607",59.9330124944272,"our_experiment_2",1,82,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04416055968665,"2018_Jul_10_1607",59.9330124944272,"our_experiment_2",1,82,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59860600636937,"2018_Jul_10_1607",59.9330124944272,"our_experiment_2",1,82,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.4531766762875,"2018_Jul_10_1607",59.9330124944272,"our_experiment_2",1,82,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.3346929171361,"2018_Jul_10_1607",59.9330124944272,"our_experiment_2",1,82,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,1,1.48480176393501,"2018_Jul_10_1607",59.9330124944272,"our_experiment_2",1,82,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47188232542537,"2018_Jul_10_1607",59.9330124944272,"our_experiment_2",1,82,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41720226377212,"2018_Jul_10_1607",59.9330124944272,"our_experiment_2",1,82,NA
"","",NA,NA,NA,NA,"space",4.11535911695155,NA,NA,"2018_Jul_10_1608",59.9330124944272,"our_experiment_2",1,83,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28503442197032,"2018_Jul_10_1608",59.9330124944272,"our_experiment_2",1,83,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04513280608281,"2018_Jul_10_1608",59.9330124944272,"our_experiment_2",1,83,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59862992664129,"2018_Jul_10_1608",59.9330124944272,"our_experiment_2",1,83,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,4,1.45513338374347,"2018_Jul_10_1608",59.9330124944272,"our_experiment_2",1,83,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33915295359306,"2018_Jul_10_1608",59.9330124944272,"our_experiment_2",1,83,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48302297128215,"2018_Jul_10_1608",59.9330124944272,"our_experiment_2",1,83,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47362877386734,"2018_Jul_10_1608",59.9330124944272,"our_experiment_2",1,83,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41613232081495,"2018_Jul_10_1608",59.9330124944272,"our_experiment_2",1,83,NA
"","",NA,NA,NA,NA,"space",4.05711063180728,NA,NA,"2018_Jul_10_1609",59.9330124944272,"our_experiment_2",1,84,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28209217985682,"2018_Jul_10_1609",59.9330124944272,"our_experiment_2",1,84,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04410646184646,"2018_Jul_10_1609",59.9330124944272,"our_experiment_2",1,84,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59957082833163,"2018_Jul_10_1609",59.9330124944272,"our_experiment_2",1,84,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45375087006614,"2018_Jul_10_1609",59.9330124944272,"our_experiment_2",1,84,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33751619916819,"2018_Jul_10_1609",59.9330124944272,"our_experiment_2",1,84,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48318877490237,"2018_Jul_10_1609",59.9330124944272,"our_experiment_2",1,84,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47141908141598,"2018_Jul_10_1609",59.9330124944272,"our_experiment_2",1,84,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41809683653899,"2018_Jul_10_1609",59.9330124944272,"our_experiment_2",1,84,NA
"","",NA,NA,NA,NA,"space",4.14271354474074,NA,NA,"2018_Jul_10_1610",59.9330124944272,"our_experiment_2",1,85,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28445982600786,"2018_Jul_10_1610",59.9330124944272,"our_experiment_2",1,85,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04450467380509,"2018_Jul_10_1610",59.9330124944272,"our_experiment_2",1,85,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.60135630401447,"2018_Jul_10_1610",59.9330124944272,"our_experiment_2",1,85,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45362660593316,"2018_Jul_10_1610",59.9330124944272,"our_experiment_2",1,85,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33933534418605,"2018_Jul_10_1610",59.9330124944272,"our_experiment_2",1,85,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48551648348533,"2018_Jul_10_1610",59.9330124944272,"our_experiment_2",1,85,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47283790383041,"2018_Jul_10_1610",59.9330124944272,"our_experiment_2",1,85,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41387934070863,"2018_Jul_10_1610",59.9330124944272,"our_experiment_2",1,85,NA
"","",NA,NA,NA,NA,"space",4.04633717951922,NA,NA,"2018_Jul_10_1611",59.9330124944272,"our_experiment_2",1,86,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28174193147719,"2018_Jul_10_1611",59.9330124944272,"our_experiment_2",1,86,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04210619357266,"2018_Jul_10_1611",59.9330124944272,"our_experiment_2",1,86,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59754936935268,"2018_Jul_10_1611",59.9330124944272,"our_experiment_2",1,86,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45344945729971,"2018_Jul_10_1611",59.9330124944272,"our_experiment_2",1,86,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33504860583805,"2018_Jul_10_1611",59.9330124944272,"our_experiment_2",1,86,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48249387836196,"2018_Jul_10_1611",59.9330124944272,"our_experiment_2",1,86,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,1,1.47220906064771,"2018_Jul_10_1611",59.9330124944272,"our_experiment_2",1,86,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41532130022906,"2018_Jul_10_1611",59.9330124944272,"our_experiment_2",1,86,NA
"","",NA,NA,NA,NA,"space",4.11029015017743,NA,NA,"2018_Jul_10_1612",59.9330124944272,"our_experiment_2",1,87,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28613920333572,"2018_Jul_10_1612",59.9330124944272,"our_experiment_2",1,87,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.0440514862109,"2018_Jul_10_1612",59.9330124944272,"our_experiment_2",1,87,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.5994635674078,"2018_Jul_10_1612",59.9330124944272,"our_experiment_2",1,87,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45472619897537,"2018_Jul_10_1612",59.9330124944272,"our_experiment_2",1,87,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33472057981379,"2018_Jul_10_1612",59.9330124944272,"our_experiment_2",1,87,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48489533082172,"2018_Jul_10_1612",59.9330124944272,"our_experiment_2",1,87,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,4,1.47368375368156,"2018_Jul_10_1612",59.9330124944272,"our_experiment_2",1,87,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41417870879918,"2018_Jul_10_1612",59.9330124944272,"our_experiment_2",1,87,NA
"","",NA,NA,NA,NA,"space",4.03228347813523,NA,NA,"2018_Jul_10_1613",59.9330124944272,"our_experiment_2",1,88,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28370410603061,"2018_Jul_10_1613",59.9330124944272,"our_experiment_2",1,88,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04185785221197,"2018_Jul_10_1613",59.9330124944272,"our_experiment_2",1,88,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59909843190201,"2018_Jul_10_1613",59.9330124944272,"our_experiment_2",1,88,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45153719153702,"2018_Jul_10_1613",59.9330124944272,"our_experiment_2",1,88,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33638023491688,"2018_Jul_10_1613",59.9330124944272,"our_experiment_2",1,88,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48636656849757,"2018_Jul_10_1613",59.9330124944272,"our_experiment_2",1,88,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,5,1.47291209088638,"2018_Jul_10_1613",59.9330124944272,"our_experiment_2",1,88,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41361804620065,"2018_Jul_10_1613",59.9330124944272,"our_experiment_2",1,88,NA
"","",NA,NA,NA,NA,"space",4.00931199883273,NA,NA,"2018_Jul_10_1614",59.9330124944272,"our_experiment_2",1,89,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28192606433593,"2018_Jul_10_1614",59.9330124944272,"our_experiment_2",1,89,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.0435067014616,"2018_Jul_10_1614",59.9330124944272,"our_experiment_2",1,89,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.59713110519834,"2018_Jul_10_1614",59.9330124944272,"our_experiment_2",1,89,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45130332959108,"2018_Jul_10_1614",59.9330124944272,"our_experiment_2",1,89,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33566095144041,"2018_Jul_10_1614",59.9330124944272,"our_experiment_2",1,89,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48163815606385,"2018_Jul_10_1614",59.9330124944272,"our_experiment_2",1,89,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.4729020991426,"2018_Jul_10_1614",59.9330124944272,"our_experiment_2",1,89,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41385418924578,"2018_Jul_10_1614",59.9330124944272,"our_experiment_2",1,89,NA
"","",NA,NA,NA,NA,"space",4.15625235360874,NA,NA,"2018_Jul_10_1454",59.9330124944272,"our_experiment_2",1,9,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28336618584134,"2018_Jul_10_1454",59.9330124944272,"our_experiment_2",1,9,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.041317404465,"2018_Jul_10_1454",59.9330124944272,"our_experiment_2",1,9,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59885864969492,"2018_Jul_10_1454",59.9330124944272,"our_experiment_2",1,9,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45075229322612,"2018_Jul_10_1454",59.9330124944272,"our_experiment_2",1,9,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,5,1.33528242579512,"2018_Jul_10_1454",59.9330124944272,"our_experiment_2",1,9,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,6,1.48230275588334,"2018_Jul_10_1454",59.9330124944272,"our_experiment_2",1,9,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,4,1.47097019069046,"2018_Jul_10_1454",59.9330124944272,"our_experiment_2",1,9,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41638571463488,"2018_Jul_10_1454",59.9330124944272,"our_experiment_2",1,9,NA
"","",NA,NA,NA,NA,"space",4.14968616301889,NA,NA,"2018_Jul_10_1615",59.9330124944272,"our_experiment_2",1,90,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28282735956684,"2018_Jul_10_1615",59.9330124944272,"our_experiment_2",1,90,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04275634457804,"2018_Jul_10_1615",59.9330124944272,"our_experiment_2",1,90,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59779115909934,"2018_Jul_10_1615",59.9330124944272,"our_experiment_2",1,90,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45295257110596,"2018_Jul_10_1615",59.9330124944272,"our_experiment_2",1,90,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.3352856243819,"2018_Jul_10_1615",59.9330124944272,"our_experiment_2",1,90,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48375935117118,"2018_Jul_10_1615",59.9330124944272,"our_experiment_2",1,90,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47172136595398,"2018_Jul_10_1615",59.9330124944272,"our_experiment_2",1,90,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,3,1.41699717332683,"2018_Jul_10_1615",59.9330124944272,"our_experiment_2",1,90,NA
"","",NA,NA,NA,NA,"space",4.12000042837141,NA,NA,"2018_Jul_10_1616",59.9330124944272,"our_experiment_2",1,91,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28453034639359,"2018_Jul_10_1616",59.9330124944272,"our_experiment_2",1,91,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04170111042038,"2018_Jul_10_1616",59.9330124944272,"our_experiment_2",1,91,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.60026964268982,"2018_Jul_10_1616",59.9330124944272,"our_experiment_2",1,91,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45272485089116,"2018_Jul_10_1616",59.9330124944272,"our_experiment_2",1,91,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.33829719332829,"2018_Jul_10_1616",59.9330124944272,"our_experiment_2",1,91,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,6,1.48541930968687,"2018_Jul_10_1616",59.9330124944272,"our_experiment_2",1,91,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,4,1.47396962467507,"2018_Jul_10_1616",59.9330124944272,"our_experiment_2",1,91,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41479015342742,"2018_Jul_10_1616",59.9330124944272,"our_experiment_2",1,91,NA
"","",NA,NA,NA,NA,"space",4.06574775193727,NA,NA,"2018_Jul_10_1617",59.9330124944272,"our_experiment_2",1,92,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,4,4.28273115833402,"2018_Jul_10_1617",59.9330124944272,"our_experiment_2",1,92,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04290811322667,"2018_Jul_10_1617",59.9330124944272,"our_experiment_2",1,92,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,6,1.60079651666544,"2018_Jul_10_1617",59.9330124944272,"our_experiment_2",1,92,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45412746400461,"2018_Jul_10_1617",59.9330124944272,"our_experiment_2",1,92,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33903104420267,"2018_Jul_10_1617",59.9330124944272,"our_experiment_2",1,92,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.483589349306,"2018_Jul_10_1617",59.9330124944272,"our_experiment_2",1,92,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,5,1.47290933950096,"2018_Jul_10_1617",59.9330124944272,"our_experiment_2",1,92,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,1,1.41558207432479,"2018_Jul_10_1617",59.9330124944272,"our_experiment_2",1,92,NA
"","",NA,NA,NA,NA,"space",4.12436213860112,NA,NA,"2018_Jul_10_1618",59.9330124944272,"our_experiment_2",1,93,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28558962380476,"2018_Jul_10_1618",59.9330124944272,"our_experiment_2",1,93,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04463476042934,"2018_Jul_10_1618",59.9330124944272,"our_experiment_2",1,93,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59721316007636,"2018_Jul_10_1618",59.9330124944272,"our_experiment_2",1,93,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45177892707177,"2018_Jul_10_1618",59.9330124944272,"our_experiment_2",1,93,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33766721739396,"2018_Jul_10_1618",59.9330124944272,"our_experiment_2",1,93,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48513970289305,"2018_Jul_10_1618",59.9330124944272,"our_experiment_2",1,93,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47300968177952,"2018_Jul_10_1618",59.9330124944272,"our_experiment_2",1,93,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41396990902312,"2018_Jul_10_1618",59.9330124944272,"our_experiment_2",1,93,NA
"","",NA,NA,NA,NA,"space",4.08208162217079,NA,NA,"2018_Jul_10_1619",59.9330124944272,"our_experiment_2",1,94,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,6,4.28593452497274,"2018_Jul_10_1619",59.9330124944272,"our_experiment_2",1,94,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,3,2.04464124609344,"2018_Jul_10_1619",59.9330124944272,"our_experiment_2",1,94,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.60118138461523,"2018_Jul_10_1619",59.9330124944272,"our_experiment_2",1,94,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,3,1.45064718392789,"2018_Jul_10_1619",59.9330124944272,"our_experiment_2",1,94,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,6,1.33757772872895,"2018_Jul_10_1619",59.9330124944272,"our_experiment_2",1,94,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48194294886738,"2018_Jul_10_1619",59.9330124944272,"our_experiment_2",1,94,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,5,1.46963253446221,"2018_Jul_10_1619",59.9330124944272,"our_experiment_2",1,94,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41781285328418,"2018_Jul_10_1619",59.9330124944272,"our_experiment_2",1,94,NA
"","",NA,NA,NA,NA,"space",4.06663278519696,NA,NA,"2018_Jul_10_1620",59.9330124944272,"our_experiment_2",1,95,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28579809755273,"2018_Jul_10_1620",59.9330124944272,"our_experiment_2",1,95,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.0422191237621,"2018_Jul_10_1620",59.9330124944272,"our_experiment_2",1,95,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59734477927797,"2018_Jul_10_1620",59.9330124944272,"our_experiment_2",1,95,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45324170209877,"2018_Jul_10_1620",59.9330124944272,"our_experiment_2",1,95,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,3,1.334844084391,"2018_Jul_10_1620",59.9330124944272,"our_experiment_2",1,95,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48596928119473,"2018_Jul_10_1620",59.9330124944272,"our_experiment_2",1,95,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47048740419783,"2018_Jul_10_1620",59.9330124944272,"our_experiment_2",1,95,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41701598142907,"2018_Jul_10_1620",59.9330124944272,"our_experiment_2",1,95,NA
"","",NA,NA,NA,NA,"space",4.0761361960564,NA,NA,"2018_Jul_10_1621",59.9330124944272,"our_experiment_2",1,96,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,7,4.28512819623426,"2018_Jul_10_1621",59.9330124944272,"our_experiment_2",1,96,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,4,2.04171946635246,"2018_Jul_10_1621",59.9330124944272,"our_experiment_2",1,96,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,4,1.59949292730577,"2018_Jul_10_1621",59.9330124944272,"our_experiment_2",1,96,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45441381567679,"2018_Jul_10_1621",59.9330124944272,"our_experiment_2",1,96,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33616706814803,"2018_Jul_10_1621",59.9330124944272,"our_experiment_2",1,96,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,5,1.48487847092636,"2018_Jul_10_1621",59.9330124944272,"our_experiment_2",1,96,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47227671312056,"2018_Jul_10_1621",59.9330124944272,"our_experiment_2",1,96,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,2,1.41795612280704,"2018_Jul_10_1621",59.9330124944272,"our_experiment_2",1,96,NA
"","",NA,NA,NA,NA,"space",4.00458183673123,NA,NA,"2018_Jul_10_1622",59.9330124944272,"our_experiment_2",1,97,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28636125975773,"2018_Jul_10_1622",59.9330124944272,"our_experiment_2",1,97,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04107586750425,"2018_Jul_10_1622",59.9330124944272,"our_experiment_2",1,97,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,5,1.59777611152232,"2018_Jul_10_1622",59.9330124944272,"our_experiment_2",1,97,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,6,1.45081809601076,"2018_Jul_10_1622",59.9330124944272,"our_experiment_2",1,97,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,4,1.33808753535151,"2018_Jul_10_1622",59.9330124944272,"our_experiment_2",1,97,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,3,1.48503339026868,"2018_Jul_10_1622",59.9330124944272,"our_experiment_2",1,97,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47261454426162,"2018_Jul_10_1622",59.9330124944272,"our_experiment_2",1,97,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,5,1.41834147329517,"2018_Jul_10_1622",59.9330124944272,"our_experiment_2",1,97,NA
"","",NA,NA,NA,NA,"space",4.07039067334669,NA,NA,"2018_Jul_10_1623",59.9330124944272,"our_experiment_2",1,98,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,5,4.28199212021716,"2018_Jul_10_1623",59.9330124944272,"our_experiment_2",1,98,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,2,2.04417484930269,"2018_Jul_10_1623",59.9330124944272,"our_experiment_2",1,98,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,3,1.59973563464843,"2018_Jul_10_1623",59.9330124944272,"our_experiment_2",1,98,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,5,1.45336694692783,"2018_Jul_10_1623",59.9330124944272,"our_experiment_2",1,98,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,1,1.33704649825245,"2018_Jul_10_1623",59.9330124944272,"our_experiment_2",1,98,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,4,1.48359911384322,"2018_Jul_10_1623",59.9330124944272,"our_experiment_2",1,98,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,3,1.47362766057178,"2018_Jul_10_1623",59.9330124944272,"our_experiment_2",1,98,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41611683091484,"2018_Jul_10_1623",59.9330124944272,"our_experiment_2",1,98,NA
"","",NA,NA,NA,NA,"space",4.12182531554377,NA,NA,"2018_Jul_10_1624",59.9330124944272,"our_experiment_2",1,99,NA
"octopus","images/o1.jpg",0,0,0,4,"",NA,3,4.28411053535901,"2018_Jul_10_1624",59.9330124944272,"our_experiment_2",1,99,NA
"sock","images/s4.jpg",0,1,1,3,"",NA,1,2.04508722249381,"2018_Jul_10_1624",59.9330124944272,"our_experiment_2",1,99,NA
"octopus","images/o2.jpg",0,2,2,5,"",NA,7,1.60119274460189,"2018_Jul_10_1624",59.9330124944272,"our_experiment_2",1,99,NA
"octopus","images/o4.jpg",0,3,3,7,"",NA,7,1.45486616354734,"2018_Jul_10_1624",59.9330124944272,"our_experiment_2",1,99,NA
"octopus","images/o3.jpg",0,4,4,6,"",NA,2,1.33575211680345,"2018_Jul_10_1624",59.9330124944272,"our_experiment_2",1,99,NA
"sock","images/s3.jpg",0,5,5,2,"",NA,2,1.48276374425888,"2018_Jul_10_1624",59.9330124944272,"our_experiment_2",1,99,NA
"sock","images/s2.jpg",0,6,6,1,"",NA,2,1.47355340351351,"2018_Jul_10_1624",59.9330124944272,"our_experiment_2",1,99,NA
"sock","images/s1.jpg",0,7,7,0,"",NA,4,1.41666433819234,"2018_Jul_10_1624",59.9330124944272,"our_experiment_2",1,99,NA
```

</details>

<br />

Person 1, commit the new data.

At the same time, Person 2, you should add the following lines to the
`.gitignore` file. This ignores HTML files in the `manuscript` folder,
which is what you can compile your RMarkdown file to. (You can also
compile it to a PDF if you have LaTeX installed, but not everyone in
this workshop has LaTeX installed.) Remember that you generally want to
avoid tracking files that are systematically derived from some source
file, since it just needlessly clutters up the git repository and takes
up pointless space. All your collaborators can just compile the source
file themselves to get the derived file.

```
# ----------------------------------------------------------------------
# Ignore HTML output from RMarkdown
# ----------------------------------------------------------------------
manuscript/*.html
```

Person 2, commit this change, and push your change to the `origin`
remote repo before Person 1 pushes the data.

Person 1, you will now need to get Person 2's new change and reapply
your changes on top of Person 2's new changes. Do so, and push the
result to the `origin` repo.

Person 2, get the new change from Person 1 and incorporate it into your
local `master` branch before moving on the next step.

## Step 18

Time to write that manuscript. Person 1, go ahead and make the
`manuscript.Rmd` look like the following (it's probably easiest to just
delete the contents of the file and then copy and paste in everything
here, but you can also copy and paste in just the new parts, if you'd
like; again, you'll need to change the value of the `file_path` variable
to actually point to where the repo exists on your computer if you want
to be able to actually compile the RMarkdown document, but this isn't
necessary for the purposes of this exercise). The content of
`manuscript.Rmd` is hidden by default because it is kind of long.

<details>

<summary>
<button type="button" class="btn btn-primary">
Click this line to reveal/hide the contents of
<code>manuscript.Rmd</code>.
</button>
</summary>

````
---
title: "Octopus or sock?"
author: "Person 1 and Person 2"
date: "7/11/2018"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(dplyr)
library(ggplot2)
```

```{r my_data, echo=FALSE}
file_path <- "~/our_experiment"
data_exp_one <- read.csv(file.path(file_path, "raw_data", "data.csv"),
                         stringsAsFactors = FALSE)
data_exp_two <- read.csv(file.path(file_path, "raw_data", "data_exp_two.csv"),
                         stringsAsFactors = FALSE)
## Summarize data
data_exp_one_sum <- data_exp_one %>%
  filter(!is.na(rating.response)) %>%
  group_by(participant, Condition) %>%
  summarize(mean_rating_response = mean(rating.response))
data_exp_one_sum_no_outlier <- data_exp_one %>%
  filter(!is.na(rating.response)) %>%
  filter(Image != "images/s2.jpg") %>%
  group_by(participant, Condition) %>%
  summarize(mean_rating_response = mean(rating.response))
data_exp_two_sum <- data_exp_two %>%
  filter(!is.na(rating.response)) %>%
  group_by(participant, Condition) %>%
  summarize(mean_rating_response = mean(rating.response))
## Summarize for plotting
data_exp_one_plotting <- data_exp_one %>%
  filter(!is.na(rating.response)) %>%
  group_by(Condition) %>%
  summarize(mean_rating_response = mean(rating.response),
            se_rating_response = sd(rating.response)/sqrt(length(rating.response)))
data_exp_one_by_item_plotting <- data_exp_one %>%
  filter(!is.na(rating.response)) %>%
  group_by(Image) %>%
  summarize(mean_rating_response = mean(rating.response),
            se_rating_response = sd(rating.response)/sqrt(length(rating.response)))
data_exp_one_plotting_no_outlier <- data_exp_one %>%
  filter(!is.na(rating.response)) %>%
  filter(Image != "images/s2.jpg") %>%
  group_by(Condition) %>%
  summarize(mean_rating_response = mean(rating.response),
            se_rating_response = sd(rating.response)/sqrt(length(rating.response)))
data_exp_two_plotting <- data_exp_two %>%
  filter(!is.na(rating.response)) %>%
  group_by(Condition) %>%
  summarize(mean_rating_response = mean(rating.response),
            se_rating_response = sd(rating.response)/sqrt(length(rating.response)))
## Stats
data_exp_one_no_outlier_t_test <- t.test(mean_rating_response ~ Condition,
                                         data = data_exp_one_sum_no_outlier)
data_exp_two_t_test <- t.test(mean_rating_response ~ Condition,
                              data = data_exp_two_sum)
## Helper t-test function
paste_t_test <- function(t_test,
                         num_digits = 3,
                         alpha = 0.01) {
  paste0("t(",
         round(t_test$parameter, digits = num_digits),
         ")=",
         round(t_test$statistic, digits = num_digits),
         ",p",
         ifelse(t_test$p.value < alpha,
                paste0("<",
                       alpha
                ),
                paste0("=",
                       round(t_test$p.value,
                             digits = num_digits))))}
```

# Introduction

In this paper,
we seek to determine whether people like pictures of octopuses more than pictures of socks.

# Experiments

We present two experiments that test this.

## Experiment 1

### Methodology

We presented participants (*n* = `r length(unique(data_exp_one$participant))`) with pictures of socks and octopuses,
and we asked them to rate the pictures on a scale from 1 to 7,
1 indicating that the picture was terrible and 7 indicating that it was great.
The stimuli were presented using PsychoPy (Peirce 2007, 2009).

### Results

As can be seen in the following figure,
the difference between ratings for octopus images does not appear to differ from the rating for sock images.

```{r, echo=FALSE}
ggplot(data = data_exp_one_plotting,
       aes(x = Condition, y = mean_rating_response)) +
  geom_point() +
  geom_errorbar(aes(ymin = mean_rating_response - se_rating_response,
                      ymax = mean_rating_response + se_rating_response),
                width = 0.1) +
  ylim(1,7) +
  ylab("Mean rating") +
  xlab("Image type") +
  theme_bw()
```

However, if one looks at the ratings by item,
it appears that there was one sock image that was consistently rated as a 7,
as can be seen in the following figure.

```{r echo=FALSE}
ggplot(data = data_exp_one_by_item_plotting,
       aes(x = Image, y = mean_rating_response)) +
  geom_point() +
  geom_errorbar(aes(ymin = mean_rating_response - se_rating_response,
                      ymax = mean_rating_response + se_rating_response),
                width = 0.1) +
  ylim(1,7) +
  ylab("Mean rating") +
  xlab("Images") +
  theme_bw()
```

Indeed, if this anomalous sock item is excluded from analysis,
participants significantly prefer the octopus images (`r paste_t_test(data_exp_one_no_outlier_t_test)`).

### Discussion

These results suggest that participants indeed prefer octopus images to sock images;
however, we conducted a follow-up study with more carefully controlled experiment items,
since the finding in this experiment is dependent upon excluding the outlier.

## Experiment 2

### Methodology

The methodology for Experiment 2 was the exact same as the methodology for Experiment 1;
however, we used more carefully controlled images in this second experiment.
There were `r length(unique(data_exp_two$participant))` different participants in this second experiment.

### Results

As can be seen in the following figure,
participants significantly prefer octopus images to sock images (`r paste_t_test(data_exp_two_t_test)`)

```{r, echo=FALSE}
ggplot(data = data_exp_two_plotting,
       aes(x = Condition, y = mean_rating_response)) +
  geom_point() +
  geom_errorbar(aes(ymin = mean_rating_response - se_rating_response,
                      ymax = mean_rating_response + se_rating_response),
                width = 0.1) +
  ylim(1,7) +
  ylab("Mean rating") +
  xlab("Image type") +
  theme_bw()
```

### Discussion

These findings confirm the suggestive results from Experiment 1.

# Conclusion

People like pictures of octopuses more than pictures of socks.
Our research puts to rest this age-old question,
helping to put all inquiring minds at ease.
````

</details>

<br />

Okay, Person 1, go ahead and commit this change, and push it to the
`origin` repo.

Person 2, go ahead and get this new change from Person 1, and
incorporate it into your local `master` branch.

## Step 19

Congrats! After 7 months of waiting, you *finally* got reviews back, and
it's time to revisit your manuscript. Revise and resubmit! Woohoo! 🎊

Reviewers generally liked your manuscript, and you really only have one
main thing to address, which is that they want to see a breakdown of
responses by item in the second experiment, too, just to make sure that
you don't have anything wonky going on with these new items.

Person 2, go ahead and create an issue for this. Go to the GitLab
repository in a browser and create an issue for the repository. In the
"Title" field put the following content:

```
Do an item analysis for second experiment
```

In the "Description" field put the following content:

```
The reviewers want to see an item analysis for the second experiment,
too.
```

Click "Submit issue" to create the issue.

Person 1, you should go ahead and create a branch for the issue that
Person 2 just created. Following the naming convention, you should name
this branch `rc/2/item-analysis`.

Now it's your turn, Person 1, to practice accidentally creating a commit
on the wrong branch and then moving it to the right branch. So even
though you've created this branch, don't yet switch to the new
branch. Stay on the `master` branch.

Go ahead and add the following lines to the `manuscript.Rmd` file. This
should go on line 56, and it should take up through line 60. The
`## Stats` comment should now start on line 61.

```r
data_exp_two_by_item_plotting <- data_exp_two %>%
  filter(!is.na(rating.response)) %>%
  group_by(Image) %>%
  summarize(mean_rating_response = mean(rating.response),
            se_rating_response = sd(rating.response)/sqrt(length(rating.response)))
```

Go ahead and commit this, Person 1. (This creates a by-item summary of
your results, if that's useful for helping you decide what to put in
the commit message.)

Oops! You just realized you didn't actually switch branches, but the
commit you just made should be part of the branch you created. Discuss
with Person 2 how you can make this happen and also how you can put the
`master` branch back to where it was. This is a little tricky, but it
should be doable given what you've learned in the workshops.

Return to the hint above, if you cannot figure it out.

Person 1, now that you've gotten your accidental commit on the `master`
branch over to your branch `rc/2/item-analysis` and moved your `master`
branch back to the preceding commit, go ahead and push that commit to
the `origin` remote repository. Since this is a new branch, don't forget
that you'll need to set the default "upstream" branch for this branch.

Person 2, go ahead and get the changes from the origin repo that Person
1 just pushed. Person 2, you now have a (local) "remote-tracking" branch
called `origin/rc/2/item-analysis`, but you don't yet have a "normal"
(*i.e.*, non-remote-tracking) local branch for this new experiment. How
might you create it and make it point to the new commit that Person 1
just pushed? (Hint: don't forget that the command git branch takes two
arguments, and don't forget that you now have a pointer in your repo
called `origin/rc/2/item-analysis`.) Discuss with Person 2.[^3]

Okay, now you both have local branches called `rc/2/item-analysis`, so
you're ready to address the reviewer comments, and Person 1 has already
summarized the data from experiment 2 by item.

## Step 20

Person 2, go ahead and add the following lines to the `manuscript.Rmd`
file, starting on line 172 of the file, and going to line 186 of the
file:

````
Furthermore, as can be seen in the following figure,
the results are stable across items in this experiment.

```{r echo=FALSE}
ggplot(data = data_exp_two_by_item_plotting,
       aes(x = Image, y = mean_rating_response)) +
  geom_point() +
  geom_errorbar(aes(ymin = mean_rating_response - se_rating_response,
                      ymax = mean_rating_response + se_rating_response),
                width = 0.1) +
  ylim(1,7) +
  ylab("Mean rating") +
  xlab("Images") +
  theme_bw()
```
````

Commit this change, and push it to the `origin` remote repository.

Person 1, you should go ahead and get this new change from Person 2, and
incorporate it into your local branch `rc/2/item-analysis`.

## Step 21

Okay, Person 2, you think the item analysis branch is good to go. Go to
the GitLab repository in a browser, and open a merge request from the
branch `rc/2/item-analysis` to the `master` branch. Give it a title and
a decsription (these can be similar to the issues). Don't forget to set
up the "Description" of the merge request such that GitLab knows to
automatically close the issue when the merge request is merged into the
master branch.

In the "Description" of the merge request, you can also `@`-mention your
collaborator, Person 1, and ask Person 1 to review the merge request
before it gets merged in.

While Perosn 2 is doing all of this, Person 1, you should *switch back
to the `master` branch* in your local repository and update the
`README.md` file. We just want to give Person 2 a reason to have to
rebase the `rc/2/item-analysis` branch on to the `master` branch for the
sake of practice, so we might as well now add that information about the
two different experiments for the benefit of your future selves.

Add the following content to the `README.md` file:

```
The first experiment had an anomalous experimental item,
so we created a second experiment with more carefully controlled images.
```

Go ahead and commit this change to the `master` branch, and push it to
the `origin` repo.

Before moving on to the next step, Person 2 should get the new changes
that Person 1 just pushed to the `origin` repository, switch back to
their `master` branch, and incorporate the new changes from Person 1
into their local `master` branch.

## Step 22

Person 1, you should now review the merge request. You think that
something more still should be added to the discussion section of
Experiment 2. So leave a comment in the thread for the merge request
asking Person 2 to change this. The URL for the merge request should be
something like:
`https://gitlab.com/<PERSON_2_USERNAME>/our_experiment/merge_requests/2`

Person 2, after you see this comment from Person 1, go ahead and address
it. First, you'll need to switch back to the branch
`rc/2/item-analysis`.

Add the following content to line 191, with a blank line to separate
this content from the "Conclusion" section heading:

```
Moreover, there is no reason to think that these findings are the result of anomalous items.
```

Go ahead and commit this, and push this new change to `origin`.

## Step 23

Okay, you both are in agreement now. The feature branch is ready to be
merged in. However, there have been new commits on `master` since the
new branch diverged from the `master` branch, so it would be a good
idea to rebase `rc/2/item-analysis` onto `master`. To reiterate what
we discussed last time, there are two main reasons to do this. First,
especially if you're not the person who has to merge in the merge
request, it's courteous for you to do this so that you deal with any
potential merge conflicts, rather than forcing the person who merges it
in to have to deal with merge conflicts. This is particularly nice to do
if you find yourself contributing to an open source project. And second,
dealing with any potential merge conflicts in advance just ensures that
the merge step is quick and clean for whoever has to do it.

So Person 2 should go ahead and rebase `rc/2/item-analysis` onto
`master`. Before you do this, discuss with Person 1 one more time why
what you're doing is okay. That is to say, you're about to rebase public
commits, which violates [The Golden Rule of Rebasing][golden-rule]. Why
is this okay in this case?

Okay, now that you've discussed this. Person 2, rebase
`rc/2/item-analysis` onto `master`, and force push the result of this to
`origin`. (You won't have any merge conflicts to deal with here, because
the one change on `master` since the point of divergence didn't edit the
same files.)

(Furthermore, note that the merge request in GitLab has once again been
updated without either of you needing to do anything.)

Let's have Person 1 actually merge the merge request in to
`master`. Person 1, you will first need to get the new changes from
`origin`. After you do this, be sure to take a look at the log of all
branches. Notice that your local branch called `rc/2/item-analysis` is
now completely distinct from your local branch called
`origin/rc/2/item-analysis`. This is because Person 2 just rewrote
`rc/2/item-analysis` and (force) pushed the results of that rewriting to
the `origin` repository.

You need to figure out how to make your local branch
`rc/2/item-analysis` point to whatever `origin/rc/2/item-analysis`
points to. First, check out your local branch `rc/2/item-analysis`, and
then make it point to whatever `origin/rc/2/item-analysis` points
to. Discuss with Person 2 how to do this if you get stuck. This is not
something we covered in the workshop explicitly, but you should have the
requisite knowledge to do it.

<details>

<summary>
<button type="button" class="btn btn-primary">
If you're really stuck, click this line to reveal the
answer.
</button>
</summary>

<br />

You'll need to do the following in order to do this:

```sh
git checkout rc/2/item-analysis
git reset --hard origin/rc/2/item-analysis
```

</details>

<br />

Note that, had you made any new commits on the `rc/2/item-analysis`
branch, these would become dangling commits after you've made your local
`rc/2/item-analysis` branch point to the same thing that
`origin/rc/2/item-analysis` points to. This is why it is almost always a
bad idea to rebase public commits. However, you talked with your
collaborators about this in advance, and Person 2 knew you wouldn't have
any new commits on this branch, so Person 2 knew you wouldn't have to
try to recover any dangling commits. Thus, it was "safe" for Person 2 to
go ahead and rebase and then force push.

Okay, you now can merge the branch in to the master branch. Person 1
should switch to the `master` branch, and merge in
`rc/2/item-analysis`. **Before running the command to do this**, think
about what you want to happen, given that you're trying to follow the
feature branch workflow here. Specifically, you want git to create a
merge commit so that you can readily identify the series of commits that
went into addressing the reviewer comment. Will this happen if you run
the requisite command without any optional flags? Why or why not? If
not, what can you do to make sure that you follow the feature branch
workflow? Discuss all of this with Person 2, and then run a command that
results in you merging the `rc/2/item-analysis` branch into the `master`
branch *with a merge commit*.

Even though the magical string that causes GitLab to automatically close
the issue is already in the body of the merge request on GitLab, go
ahead and also add this magical string to the commit message for the
merge commit. Use the default merge commit message, so add this magical
string on the third line of the commit message (don't forget that you
should always leave a blank line after the first line of a commit
message).

Okay, now that you've merged `rc/2/item-analysis` into the `master`
branch, go ahead and send the new changes to `origin`. Doing so should
cause GitLab to automatically mark the merge request as merged and also
autoatmically close the associated issue. 🙌

Person 2, go ahead and fetch these new changes from `origin` and
incorporate them in to your local `master` branch.

You can now both do a bit of cleanup. Both Person 1 and Person 2 can
delete their local `rc/2/item-analysis` branch. Do so, and also discuss
one more time with each other why you can delete the branch without
losing the work that was on the branch. (Hint: what are branches in the
git object model?)

Person 1, you can furthermore delete the branch from the `origin`
repository.

Congrats! You're now ready to resubmit your manuscript, and you've
finished this exercise in collaborating with git! 🏆

## Notes

[^1]: Since the `stimuli.csv` file that we will be working with is
      pretty simple, it is probably easiest to just work with this file
      by editing it in Sublime. However, if you open it from inside of
      Finder (macOS) or File Explorer (Windows), it will probably open
      in a spreadsheet program, such as Excel or LibreOffice. You can
      edit the file this way, and it is generally much easier to use a
      spreadsheet program to edit more complicated CSV files, **but you
      should make sure that the file gets saved as a CSV text file with
      UTF-8 encoding** if you do edit it in a spreadsheet program
      instead of a text editor. Also, this file will eventually have
      merge conflict indicators inside of it at various points in this
      exercise, in which case I would bet that spreadsheet programs will
      choke when trying to open it, so you will need to edit the file in
      a text editor like Sublime then.

[^2]: Note that if you do have to go back and fix anything in the CSV
      File, whatever you change will not be staged. Only what you've
      already staged will be staged, so when you run `git status` after
      making changes to the CSV file, you will see that some parts of
      the CSV file are staged, and some parts are not. You want to stage
      the file again if you want to update the index (which you do)
      before committing things. In the case of the images, if Git LFS
      was not set up properly to track the files, you'll need to fix
      this either by running the command `git lfs track` again or by
      directly editing the `.gitattributes` file; in either case, you'll
      have to actually unstage and then restage the image file. This is
      because the first time you staged it, the staging was handled by
      git, but we want the entire staging process to be handled by Git
      LFS.

[^3]: Despite the fact that you don't actually have a local branch
      called `feat/1/new-experiment`, you can actually check it out
      without having to explicitly create it first. Git is smart enough
      to realize that you want to create a local copy of the local
      remote-tracking branch that you have if you use the same name. So,
      what I've asked you to do is honestly unnecessary, but I just
      wanted to get you thinking about how you would do it, if git
      weren't clever enough to facilitate things for you.

[lesson-plans]: https://gitlab.com/git-workshop2018/git-workshop2018_materials/blob/master/lesson_plans/lesson_plans.org
[gitignore]: https://github.com/github/gitignore
[migrate-lfs]: https://github.com/git-lfs/git-lfs/wiki/Tutorial#migrating-existing-repository-data-to-lfs
[relative-path]: https://en.wikipedia.org/wiki/Path_(computing)#Absolute_and_relative_paths
[psychopy]: http://www.psychopy.org/
[data]: https://youtu.be/oJN6jUCy208
[gitignore-patterns]: https://git-scm.com/docs/gitignore
[golden-rule]: https://www.atlassian.com/git/tutorials/merging-vs-rebasing#the-golden-rule-of-rebasing

<!-- Local Variables: -->
<!-- mode: markdown -->
<!-- coding: utf-8 -->
<!-- fill-column: 72 -->
<!-- End: -->
