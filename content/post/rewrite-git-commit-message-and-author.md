---
title: "Rewrite git commit messages and authors"
date: 2018-12-17T06:13:56+11:00
excerpt: ""
images:
 - '/images/railscamp-search-term-1-contributor.png'
 - '/images/railscamp-search-term-33-contributors.png'
draft: true
---

1. So you want to alter your commit messages and authors to protect anyone's
   email address from being publicly available in an open source repository or
   change the author to correctly acknowledge who did the coding in the pair,
   you are writing production quality code, you are pairing right?

1. Start an interactive rebase from the very first commit `--root`

	  {{< highlight bash >}}
git rebase --interactive --root
{{< / highlight >}}

1. In the list of commits change any commits where you want to change the
   author

    from `pick`

	  {{< highlight bash >}}
1 pick f6d9b9d Initial Commit
2 pick de721fe Created React client
3 pick 0f515e5 Procfile to run client and server together
{{< / highlight >}}

    to `edit`

	  {{< highlight bash "hl_lines=1-2">}}
1 edit f6d9b9d Initial Commit
2 edit de721fe Created React client
3 pick 0f515e5 Procfile to run client and server together
{{< / highlight >}}

1. Upon editing the the interactive rebase you will be taken to the first
   commit to `edit`, at this time you can amend the author from the command
   line

	  {{< highlight bash >}}
git commit --amend  --author='Jess Brown <noiselessdwindle@users.noreply.github.com>'
{{< / highlight >}}

1. This will also allow you to change the commit message and any
   `Co-authored-by:`, unless you already have your email publicly attached to
   your github account as is the case for us

	  {{< highlight bash "hl_lines=7">}}
Initial Commit

Co-authored-by: Michael Milewski <saramic@gmail.com>
Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
minor edit of the author

# Author:    Jess Brown <noiselessdwindle@users.noreply.github.com>
# Date:      Sat Nov 24 11:52:19 2018 +1100
#
# On branch master
{{< / highlight >}}

1. Note this will change the SHA, _the git SHA-1 checksum of the
   content and header_, of the commit. Our commit now becomes
   [289b8422201](https://github.com/failure-driven/railscamp-search-term/commit/289b8422201f3d8c5f960e18c6e700dc5318f51c)

1. When all is good force push it to master

	  {{< highlight bash >}}
git push --force
{{< / highlight >}}

1. But the original commit is still there, just orphaned. This means that in
   time git should garbage collect it.

    [Original commit 32 - 6d1e4b0](https://github.com/failure-driven/railscamp-search-term/commit/6d1e4b0db1f232728bf7da6769c50f8dc0315985)

	  {{< highlight bash >}}
commit 6d1e4b0db1f232728bf7da6769c50f8dc0315985
Author: Michael Milewski <saramic@gmail.com>
Date:   Sun Nov 25 20:36:35 2018 +1100

page fragments

Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
{{< / highlight >}}

    [Amended commit 32 - 0a5196b](https://github.com/failure-driven/railscamp-search-term/commit/0a5196b510e3f47b5e8a31f31b4a03346d6bbd93)

	  {{< highlight bash >}}
commit 0a5196b510e3f47b5e8a31f31b4a03346d6bbd93
Author: Selena Small <selenawiththetattoo@gmail.com>
Date:   Sun Nov 25 20:36:35 2018 +1100

page fragments

Co-authored-by: Michael Milewski <saramic@gmail.com>
{{< / highlight >}}

    We have attempted a number of things to remove these commits but a lot of
    the garbage collection (`git-gc`) only works on the local file system. ie
    looking at the local git file structure `.git/objects/`

	  {{< highlight bash >}}
find .git/objects/

...
.git/objects/0a
.git/objects/0a/5196b510e3f47b5e8a31f31b4a03346d6bbd93
...
{{< / highlight >}}

    Shows our commits and pruning them

	  {{< highlight bash >}}
git gc --prune=now --aggressive
{{< / highlight >}}

    get's rid of them locally but no amount of force pushing them up to github
    will remove them. We welcome any feedback on how to do this beyond deleting
    the git repo in github and uploading a completely new copy.

1. Ultimately the commit author amend changed the git contribution

    from 1 contributor

    ![railscamp search term 1 contributor](/images/railscamp-search-term-1-contributor.png)

    to 33 contributors

    ![railscamp search term 33 contributors](/images/railscamp-search-term-33-contributors.png)

    interestingly this took a while for github to update the contributors and
    looking at the repository there are actually [38
    contributors](https://github.com/failure-driven/railscamp-search-term/graphs/contributors)
    so maybe over time this number will go up? maybe something else is going on
    here?

    ![railscamp search term contributors](/images/railscamp-search-term-contributors-top-bottom.png)

## Why rewrite commit messages and authors?

As already mentioned at the beginning we assume

  * you are pairing to get developers in your team across the code base
  * you want to acknowledge your pair with a `Co-authored-by:` commit message
    which github will show as a commit with joint authors
  * you happen to use the users email address associated with thier github
    account
  * only to work out they are not necessarily too comfortable having their
    email out in a public repo
  * and ultimately some of the time the actual `author` of the commit is not
    the person who owned the machine so you may want to retrospectivley change
    the author to give them due credit.

TODO - rework from here onwards

Well we were working in this sprit at the recent [rails camp Hobart]({{< ref
"/post/railscamp-pairing" >}}) when we were trippling with a whole bunch of
people. as we got our guest contributor to write all the code we thought we
should co-author them in every commit. This was all good until at some stage
github user **isikyus** needed to opt out from giving his email address.
Initially in the safe confines of rails camp this seemed odd. After all a large
number of github users are proud of providing their email in their profile.
Well on reflection and other discussions this is not always the case. There are
numerous scenarios where someone may want to stay somewhat anonymous on the
internet, certainly enough that they don't give out their email address.

Although in general our view is that git is a history aligned with a certain
point in time so it should stay that way and not be altereed. This is a case
where for peoples safety and well being we _need_ to change history. But change
history to what? we still wanted to attribute authors and make our repo
colourful with the representation of all the varied people that attended rails
camp and took part! Here our user **isikyus** also had the answer, mark all the
commits the noreply email address provided by github. So our commit from above
could become this

TODO - probably don't need to go through the process again?

    anonymised commit

Whilst we were there we had only co-authored everyone but as we said, these
people were the authors! if we were going to go through 48 hours worth of
commits to change them we may as well give all these authors there due
recognition as the actual author and us as co-authors. this would also allow us
to fix a typo in co-authored that lost one of our committers from history.

So how do we rewrite git hub commit messages and authors?

start a git interactive rebase from the first commit

usually a

{{< highlight bash >}}
git rebase --interactive HEAD~3
git rebase -i HEAD~3
{{< / highlight >}}

would allow you to interactively rebase the last 3 commits. This method does
not seem to work with numbers with more then 2 digits, after all who in their
right mind would want to re-do 43 commits? Well we did so we used the SHA
instead

{{< highlight bash >}}
git rebase --interactive f6d9b9d11923758c36a0793f26d8392ea0cba397
{{< / highlight >}}

now in an editor we get all the commits

{{< highlight bash >}}
  1 pick de721fe Created React client
  2 pick 0f515e5 Procfile to run client and server together
  3 pick 22212c2 Add rspec to gemfile and initialize
  4 pick 8e85e82 Configure tests to use foreman and capybara.
  5 pick 74791c0 Add welcome message
  6 pick 76caa23 [WIP] testing a button of the game page
  ...
 40 pick b95d142 Get rid of the werewolves.
 41 pick e44837b Unfuck textarea
 42 pick 9a0d062 Fixed css to make things pretty
{{< / highlight >}}

if we were just re-wording the commit changing the pick to reword would have
been enough but in this case we wanted to amend the author so we need to change
each of these to edit.

but oh oh this only takes us to the first commit after the initial commit.
Although there were ways around this in the past, modern versions of git allow
you to use the --root option

{{< highlight bash >}}
git rebase --interactive --root

  1 pick f6d9b9d Initial Commit
  2 pick de721fe Created React client
  3 pick 0f515e5 Procfile to run client and server together
  4 pick 22212c2 Add rspec to gemfile and initialize
  5 pick 8e85e82 Configure tests to use foreman and capybara.
  6 pick 74791c0 Add welcome message
  7 pick 76caa23 [WIP] testing a button of the game page
 ...
 41 pick b95d142 Get rid of the werewolves.
 42 pick e44837b Unfuck textarea
 43 pick 9a0d062 Fixed css to make things pretty
{{< / highlight >}}

then

{{< highlight bash >}}
git commit --amend  --author='Jess Brown <noiselessdwindle@users.noreply.github.com>'
{{< / highlight >}}

and then it is just a manual run that looks like this

{{< highlight bash >}}
48099  git status
48100  git rebase --interactive f6d9b9d11923758c36a0793f26d8392ea0cba397^
48101  git rebase --interactive ^f6d9b9d11923758c36a0793f26d8392ea0cba397
48102  git rebase --interactive f6d9b9d11923758c36a0793f26d8392ea0cba397^
48103  git status
48104  git log
48105  git rebase --interactive f6d9b9d11923758c36a0793f26d8392ea0cba397
48106  git log
48107  git rebase --abort
48108  git rebase --interactive --root
48109  git commit --amend
48110  git commit --amend  --author='Jess Brown <noiselessdwindle@users.noreply.github.com>'
48111  git log
48112  git commit --amend  --author='Jess Brown <noiselessdwindle@users.noreply.github.com>'
48113  git log
48114  history | tail
48115  git rebase --continue
48116  git commit --amend  --author='Kirsten Comandich <kcomandich@users.noreply.github.com>'
48117  git rebase --continue
48118  git commit --amend  --author='Isikyus <isikyus@users.noreply.github.com>'
48119  git rebase --continue
48120  git commit --amend  --author='Matt Patterson <mattpatterson94@users.noreply.github.com>'
48121  git rebase --continue
48122  git commit --amend  --author='Matt Patterson <mattpatterson94@users.noreply.github.com>'
48123  git rebase --continue
48124  git commit --amend  --author='Emily Coats <gamzatti@users.noreply.github.com>'
48125  git rebase --continue
48126  git commit --amend  --author='Brenton Annan <brentonannan@users.noreply.github.com>'
48127  git rebase --continue
48128  git commit --amend  --author='Rob Jacoby <robjacoby@users.noreply.github.com>'
48129  git rebase --continue
48130  git commit --amend  --author='Paul Douglas <pdouglasssi@users.noreply.github.com>'
48131  git rebase --continue
48132  git commit --amend  --author='Tim Lucas <toolmantim@users.noreply.github.com>'
48133  git rebase --continue
48134  git log
48135  git rebase --continue
48136  git commit --amend  --author='Jon Leighton <jonleighton@users.noreply.github.com>'
48137  git rebase --continue
48138  git commit --amend  --author='Cameo Langford <cameocodes@users.noreply.github.com>'
48139  git commit --amend  --author='Eathan Langford <EathanLangford@users.noreply.github.com>'
48140  git commit --amend  --author='Cameo Langford <cameocodes@users.noreply.github.com>'
48141  git rebase --continue
48142  git commit --amend  --author='Eathan Langford <EathanLangford@users.noreply.github.com>'
48143  git rebase --continue
48144  git commit --amend  --author='Nick Wolf <quintrino@users.noreply.github.com>'
48145  git rebase --continue
48146  git commit --amend  --author='Nadia Vu <nadiavu@users.noreply.github.com'
48147  git commit --amend  --author='Nadia Vu <nadiavu@users.noreply.github.com>'
48148  git rebase --continue
48149  git commit --amend  --author='Bashir Towdiee <BashirTowdiee@users.noreply.github.com>'
48150  git rebase --continue
48151  git commit --amend  --author='Laurence Dibah <LDibs@users.noreply.github.com>'
48152  git rebase --continue
48153  git commit --amend  --author='Chris Aitchison <cmaitchison@users.noreply.github.com>'
48154  git rebase --continue
48155  git commit --amend  --author='Dana Scheider <danascheider@users.noreply.github.com>'
48156  git rebase --continue
48157  git commit --amend  --author='Co-authored-by: Erin Belot <erinbelot@users.noreply.github.com>'
48158  git rebase --continue
48159  git commit --amend  --author='James Martelletti <jmartelletti@users.noreply.github.com>'
48160  git rebase --continue
48161  git commit --amend  --author='Michael Morris <mtcmorris@users.noreply.github.com>'
48162  git rebase --continue
48163  git commit --amend  --author='Keith Pitty <keithpitty@users.noreply.github.com>'
48164  git rebase --continue
48165  git commit --amend  --author='Keith Pitty <keithpitty@users.noreply.github.com>'
48166  git rebase --continue
48167  git commit --amend  --author='Caitlin Palmer-Bright <caitlinpb@users.noreply.github.com>'
48168  git rebase --continue
48169  git log
48170  git rebase --continue
48171  git commit --amend  --author='Emma Park <emma-park-envato@users.noreply.github.com>'
48172  git rebase --continue
48173  git commit --amend  --author='Geoffrey Donaldson <geoffreyd@users.noreply.github.com>'
48174  git rebase --continue
48175  git commit --amend  --author='Sonya Corcoran <SoxFace@users.noreply.github.com>'
48176  git rebase --continue
48177  git log
48178  git commit --amend  --author='Selena Small <selenawiththetattoo@gmail.com>'
48179  git rebase --continue
48180  git log
48181  git commit --amend  --author='Selena Small <selenawiththetattoo@gmail.com>'
48182  git rebase --continue
48183  git commit --amend  --author='Elliott Hilaire <elliotthilaire@users.noreply.github.com>'
48184  git rebase --continue
48185  git commit --amend  --author='Caroline Bambrick <carbam@users.noreply.github.com>'
48186  git rebase --continue
48187  git log
48188  git rebase --continue
48189  git commit --amend  --author='Lauren Hennessy <LKHennessy@users.noreply.github.com>'
48190  git rebase --continue
48191  git commit --amend  --author='Drew Noll <oheydrew@users.noreply.github.com>'
48192  git rebase --continue
48193  git commit --amend  --author='Sam Margalit <margalit@users.noreply.github.com>'
48194  git rebase --continue
48195  git commit --amend  --author='Samuel Cochran <sj26@users.noreply.github.com>'
48196  git rebase --continue
48197  git commit --amend  --author='Anton Katunin <antulik@users.noreply.github.com>'
48198  git rebase --continue
48199  git commit --amend  --author='Pat Allan <pat@users.noreply.github.com>'
48200  git rebase --continue
48201  git commit --amend  --author='Toby Nieboer <tcn33@users.noreply.github.com>'
48202  git rebase --continue
48203  git commit --amend  --author='Aaron Moodie <aaronmoodie@users.noreply.github.com>'
48204  git rebase --continue
48205  git log
48206  history | tail -50
48207  history | tail -100
48208  history | tail -110 | pbcopy
{{< / highlight >}}

mid way ofcourse I thought there must be an easier way, write a script, doh too
late its done

finally

{{< highlight bash >}}
git push --force
{{< / highlight >}}

and all the commit sha's have changed so the lol commits won't match up - too bad

TODO - end of dupliate content

TODO - images around contributors chaninging

was hoping for a change in the number of contributors but that still seems to
be limited to the 1 that was Michael as the commiter as his latopt was used

Commit count up in github images

TODO - commit times
the update times have changed even though the original commit times in the logs
are the same

TODO - sha is still there lolcommits never lie

The lol commit will never lie
 ![commit 32 Selena Small & Michael Milewski](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_32_selena_small_6d1e4b0db1f.gif)

### Resources

TODO fix

- https://help.github.com/articles/changing-a-commit-message/
- amend author name https://stackoverflow.com/questions/3042437/how-to-change-the-commit-author-for-one-specific-commit
- change first commit https://stackoverflow.com/questions/2246208/change-first-commit-of-project-with-git
- edit root commit https://stackoverflow.com/questions/2119480/edit-the-root-commit-in-git

#### Authored By:

Selena Small & Michael Milewski

