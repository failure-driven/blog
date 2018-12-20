---
title: "Rewrite git commit messages and authors"
date: 2018-12-20T14:19:19+11:00
excerpt: "You are pairing to get developers in your team across the code base
  and to write the best quality code. You only realise after some number of
  commits that for the acknowledgment of the Author and the stats of you
  project you need to rewrite your commit messages and authors history! here is
  how ..."
featured_image: '/images/railscamp-search-term-1-to-33-contributors.jpg'
images:
 - '/images/railscamp-search-term-1-contributor.png'
 - '/images/railscamp-search-term-33-contributors.png'
---

1. Given this commit message

	  {{< highlight bash "hl_lines=2 7" >}}
commit 6d1e4b0db1f232728bf7da6769c50f8dc0315985
Author: Michael Milewski <saramic@gmail.com>
Date:   Sun Nov 25 20:36:35 2018 +1100

page fragments

Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
{{< / highlight >}}

1. Say you want to change the **Author** and **Co-author** around. In this
   case Selena is all over simplifying our code with page fragments and she
   authored the commit.

     **And**

     To protect Selena's email in a publicly available open source repositry we
     may want to rewrite here email associated with her GitHub account with a
     generic `@users.noreply.github.com`.

     Note: _in this case she has opted to have that email public as part of her
     GitHub profile as do I._

1. What are authors and co-authors? well you are writing production quality
   code, you are pairing right? read on and all will be revealed.

1. Start an interactive rebase from the very first commit `--root`

	  {{< highlight bash >}}
git rebase --interactive --root
{{< / highlight >}}

1. In the list of commits change any commits where you want to change the
   author, for this exercise we will focus on commit 32

    change from **pick**

	  {{< highlight bash >}}
 ...
 31 pick 538eddf Given When Then steps
 32 pick 0a5196b page fragments
 33 pick 5c6f3ec Disabled the the text area after a correct guess
 ...
{{< / highlight >}}

    to **edit**

	  {{< highlight bash "hl_lines=3">}}
 ...
 31 pick 538eddf Given When Then steps
 32 edit 0a5196b page fragments
 33 pick 5c6f3ec Disabled the the text area after a correct guess
 ...
{{< / highlight >}}

1. Upon editing the commits, the interactive rebase will take you to the first
   commit marked as **edit**, at this time you can amend the author from the
   command line

	  {{< highlight bash >}}
git commit --amend  --author='Selena Small <SelenaSmall@users.noreply.github.com>'
{{< / highlight >}}

1. This will also allow you to change the commit message including any
   **Co-authored-by:** sections

	  {{< highlight bash "hl_lines=3 5">}}
page fragments

Co-authored-by: Michael Milewski <saramic@gmail.com>

# Author:    Selena Small <SelenaSmall@users.noreply.github.com>
# Date:      Sun Nov 25 20:36:35 2018 +1100
#
# On branch master
{{< / highlight >}}

    **So we are basically** we have:
      - swapped the Author with the Co-author
      - anonimized the Author email

1. Note this will change the SHA of the commit. The git SHA is the SHA-1
   checksum of the content and header.

     So from our original
   [0a5196b](https://github.com/failure-driven/railscamp-search-term/commit/0a5196b510e3f47b5e8a31f31b4a03346d6bbd93)
   Our commit now becomes
   [6a166c](https://github.com/failure-driven/railscamp-search-term/commit/6a166cb9e0233f42580a36b5b581c72f63a916ad)

1. When all is good force push it to master

	  {{< highlight bash >}}
git push --force
{{< / highlight >}}

1. Now our master branch has all the new commit with the amended Author/Co-author 💥

1. But the original commit is still there 😢

    It is there as an orphaned commit. This means that in time git should
    garbage collect it.

    **Original** commit 32 -
    [6d1e4b0](https://github.com/failure-driven/railscamp-search-term/commit/6d1e4b0db1f232728bf7da6769c50f8dc0315985)
    **Author Michael**


	  {{< highlight bash "hl_lines=2" >}}
commit 6d1e4b0db1f232728bf7da6769c50f8dc0315985
Author: Michael Milewski <saramic@gmail.com>
Date:   Sun Nov 25 20:36:35 2018 +1100

page fragments

Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
{{< / highlight >}}

    **Amended** commit 32 -
    [0a5196b](https://github.com/failure-driven/railscamp-search-term/commit/0a5196b510e3f47b5e8a31f31b4a03346d6bbd93)
    **Author Selena**

	  {{< highlight bash "hl_lines=2" >}}
commit 0a5196b510e3f47b5e8a31f31b4a03346d6bbd93
Author: Selena Small <SelenaSmall@users.noreply.github.com>
Date:   Sun Nov 25 20:36:35 2018 +1100

page fragments

Co-authored-by: Michael Milewski <saramic@gmail.com>
{{< / highlight >}}

1. How do we get rid of these orphaned commits?

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

    get's rid of them locally but no amount of force pushing them up to GitHub
    will remove them. We welcome any feedback on how to do this beyond deleting
    the git repo in GitHub and uploading a completely new copy.

1. So we did this for the code base of our recent [rails camp Hobart]({{< ref
   "/post/railscamp-pairing" >}}) project that was all about pairing/trippling
   on writing some code. It was all done on Michael's machine and we never
   changed the Author so we decided to do this retrospectively.

1. Ultimately the commit author amend changed the git contribution

    from **1 contributor**

    to **33 contributors**

    ![railscamp search term from 1 to 33 contributors](/images/railscamp-search-term-1-to-33-contributors.jpg)

    interestingly this took a while for GitHub to update the contributors and
    looking at the repository there are actually [38
    contributors](https://github.com/failure-driven/railscamp-search-term/graphs/contributors)
    so maybe over time this number will go up? maybe something else is going on
    here?

    ![railscamp search term contributors](/images/railscamp-search-term-contributors-top-bottom.png)

## Why rewrite commit messages and authors?

As already mentioned at the beginning we assume

  * you are pairing to get developers in your team across the code base and to
    write the best quality code.
  * you want to acknowledge your pair with a `Co-authored-by:` commit message
    which GitHub will show as a commit with joint authors
  * you happen to use the users email address associated with their GitHub
    account
  * only to work out they are not necessarily too comfortable having their
    email out in a public repo
  * and ultimately some of the time the actual `author` of the commit is not
    the person who owned the machine so you may want to retrospectively change
    the author to give them due credit.

Our general view is that git is a history aligned with a certain oint in time
and should stay that way, not be altered in the past, just roll forward with
new changes. In this case we would make and exception for peoples well being
and our stats of the number of actual authors on our combined project.

We thank the inspiration of our 3rd committer in our project **isikyus**, blog
coming soon, who wanted to be anonymised and brought our attention to:

> **[GitHub username]@users.noreply.github.com**

So even though it was

- only 43 commits,
- and 38 committers,

it was still a fair bit of work to

- find all the committers GitHub usernames,
- meticulously prepare the alteration of commit messages in a separate file,
- find we missed a committer first time around for **Co-authored-by** had a type in the commit
message
- backup the git repo just in case
- and then finally manually run through the changes

{{< highlight bash >}}
git rebase --interactive --root
git commit --amend  --author='Jess Brown <noiselessdwindle@users.noreply.github.com>'
git rebase --continue
git commit --amend  --author='Kirsten Comandich <kcomandich@users.noreply.github.com>'
git rebase --continue
git commit --amend  --author='Isikyus <isikyus@users.noreply.github.com>'
git rebase --continue

... 80 lines dropped for brevity

git commit --amend  --author='Pat Allan <pat@users.noreply.github.com>'
git rebase --continue
git commit --amend  --author='Toby Nieboer <tcn33@users.noreply.github.com>'
git rebase --continue
git commit --amend  --author='Aaron Moodie <aaronmoodie@users.noreply.github.com>'
git rebase --continue
{{< / highlight >}}

And an hour later all was good in the git repo.

Well apart from:

- the orphaned commits - although everyone from railscamp is ultimately ok with
  the original commit messages,
- and the force push changes the time of the last update to the repository,
- and the SHAs don't match up with the lolcommits
- and a minor note on the above example, we never actually anonymized Selena's
  email address in commit 0a5196b

And of course mid way we thought there must be a script or an easier way! but
that was half way so it was faster to just complete and move on.

### The SHA in the lolcommit will never lie

**Original** commit 32 - [6d1e4b0db1f](https://github.com/failure-driven/railscamp-search-term/commit/6d1e4b0db1f)
![commit 32 Selena Small & Michael Milewski](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_32_selena_small_6d1e4b0db1f.gif)

### Resources

- [GitHub help - change commit message](https://help.github.com/articles/changing-a-commit-message/)
- [Stackoverflow - amend author name](https://stackoverflow.com/questions/3042437/how-to-change-the-commit-author-for-one-specific-commit)
- [Stackoverflow - change first commit](https://stackoverflow.com/questions/2246208/change-first-commit-of-project-with-git)
- [Stackoverflow - edit root commit](https://stackoverflow.com/questions/2119480/edit-the-root-commit-in-git)

#### Authored By:

Selena Small & Michael Milewski

