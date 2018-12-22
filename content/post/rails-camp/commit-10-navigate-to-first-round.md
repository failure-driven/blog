---
title: "Commit 10 Navigate to First Round"
date: 2019-01-21T09:30:00+11:00
excerpt: ""
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_10_tim_lucas_41ca4d41985.gif'
images:
 - '/images/rails-camp/commit_10_tim_lucas_41ca4d41985_still.jpg'
 - '/images/failure-driven_square.jpg'
draft: true
---

Tim is next up in our series of "code with everyone at [rails camp
Hobart]({{< ref "/post/railscamp-pairing" >}}) project". We were now
starting to revist previously made short term decissions and wire up
buttons to actually take users to places we wanted them to be in.
That is all within the design of Test Driven Development. We have
been making steps to **Red** write failing tests and **Green** make
them pass, now finally we were starting to do some **Refactoring**.

<img alt="@toolmantim" src="//github.com/toolmantim.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />

Commit [1a3f44d](https://github.com/failure-driven/railscamp-search-term/commit/1a3f44d31def8160b6f7ff4a14a297055c037b36)

{{< highlight bash >}}
Author: Tim Lucas <toolmantim@users.noreply.github.com>
Date:   Sat Nov 24 20:10:36 2018 +1100

Made start button navigate to /rounds/1

Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
Co-authored-by: Michael Milewski <saramic@gmail.com>
{{< / highlight >}}

The refactor in this case was to remove the reliance of the button being an
actual button. After all an anchor tag, a link, can take you just as well to a
new location as a button. We were starting to rely on a few too many things
hard coded in our test and implementation. The first fix for this was to use
`data-` attribute to find the element that would trigger the actoin to go to
round 1. This meant that we be independent of the implementation be it button
or link as long as the data attribute was there.

From the button to the link

{{< highlight diff >}}
- <button>
-   Start Game
- </button>
+ <a
+   data-start-button={true}
+   href="/rounds/1"
+ >
+   Start Game
+ </a>
{{< / highlight >}}

and the test

{{< highlight diff >}}
- page.find('button').click
+ page.find('[data-start-button]').click
{{< / highlight >}}

There seems still a bit of reliance in the integration spec knowing
that a particular link will have a particular data attribute. There
is clearly another abstraction needed here. After all the outside
layer of our BDD, the integration spec, is from the Behaviour of the
user. No user will know what data attribute is on a button. In fact
we may even strip these data attributes out by the time that they
get used in production. As we are modelling user behaviour our
writing of the specs should be modeled the same way. There is an
abstraction here but we will wait to really need it to add it then.

### 5 minutes with Tim

> **Selena** "what did you think of pairing with us"

> **Tim** "yeah it was fun, I like the different things you learn when working
> with others. In this case it was fun using a new IDE"

> **Tim** "not being sarcastic or anything"

> **Selena** "Yeah it is interesting that a lot of developers have a love hate
> relationship with our pairing IDE of choice RubyMine. We find that it comes
> with the most sane defaults and is quite powerfull. Especially in a pairing
> environment where you end up using someone elses machine it allows people to
> be super productive in the shortest period of time."

> **Selena** "You mentioned learning by pairing with us, do you pair at your
> work? how do you learn and cross polinate ideas?"

> **Tim** "I force demo time on the team every thursday. It give the
> opportunity for developers to show what they have been working on, what
> problems the have solved and are stuck on. Amongst other things the show it
> all in their terminal and IDE of choice. The whole team gets to quickly
> experience new stuff and how people work, what short cuts they use. Have you
> guys learnt anything from pairing with me?"

> **Selena** "Yeah that was cool how you just typed"

> {{< highlight bash >}}
git commit -va
{{< / highlight >}}

> "and saw all the changes come up, I am guessing that the -v is verbose? let's
> try it, the `-a` is for for staging `--all` files"

> {{< highlight bash >}}
git commit --verbose --all
{{< / highlight >}}

> "nice now we can review all the changes in the editor window rather than
> first diffing them."

> **Tim** "it was interesting working with jest unit testing in `--watch` mode
> so it auto runs the test everytime a file is modified."

> {{< highlight bash >}}
npm run test --watch
{{< / highlight >}}

> **Tim** "Let's get this
> Lolcommit with the fireplace in it"

### Lolcommit

Disappointingly we did not get the fireplace in the shot first time around.

![pairing with Tim Lucas but no fire](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_10_tim_lucas__test_10cff08fa15.gif)

So a quick `git commit --amend` and a tilt of the laptopt sorted that out.

![commit 10 with Tim Lucas](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_10_tim_lucas_41ca4d41985.gif)

#### Authored By:

Selena Small & Michael Milewski

