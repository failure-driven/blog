---
title: "Commit 10 Navigate to First Round"
date: 2019-03-04T08:00:00+11:00
excerpt: "Tim is next up in our series of 'code with everyone at rails camp
Hobart project'. As is part of the process in TDD, we were now ready for some
refactoring in the GREEN."
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_10_tim_lucas_41ca4d41985.gif'
images:
 - '/images/rails-camp/commit_10_tim_lucas_41ca4d41985_still.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski
---

Tim is next up in our series of "code with everyone at [rails camp
Hobart]({{< ref "/post/railscamp-pairing" >}}) project".

As is part of the process in TDD, we were now ready for some refactoring in the
`GREEN`.

> **RED**

> **GREEN**

> **REFACTOR**

As we revisted buttons that had temporarily been wired up to get tests passing,
we knew moving forward we would need them to work more effectively in order to
actually take users to places we wanted them to be in.

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

Ten commits in and we were starting to rely on a few too many things hard coded
in our tests and implementation.

The refactor we needed was to change the button to be a link and to do this, we
would use the `data-` attribute to find the element which triggers the action
"go to round 1."

In doing this, integration tests would be independant of fine grained
implementation. For example, we could switch between buttons, links and any
other element as long as it had the specified data attribute associated to it -
as long as the test can find that data attribute when it expects to, the test
wouldn't be broken.

The updated test:

{{< highlight diff >}}
- page.find('button').click
+ page.find('[data-start-button]').click
{{< / highlight >}}

Changing the button to be a link:

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

There is clearly another abstraction that could happen here since our
integration tests still rely on knowing that a particular link will have a
particular data attribute.

These data attributes are really only there for the purpose of testing and no
user will even know that any data attribute is even on a button. In fact we may
even strip these data attributes out by the time that they get used in
production.

### 5 minutes with Tim

> **Q:** "What did you think of pairing with us?"

> **A:** "Yeah it was fun, I like the different things you learn when working
> with others. In this case it was fun using a new IDE [RubyMine](https://www.jetbrains.com/ruby/).
> Not being sarcastic or anything."

> **Selena** "It is interesting that a lot of developers have a love hate
> relationship with our pairing IDE of choice. We find that it comes with most
> of the defaults that we need working in ruby. In a pairing environment where
> you need to be able to switch machines easily, it allows people to be more
> productive in the shortest period of time."

> **Q:** "You mentioned learning by pairing with us, do you pair at your
> work?"

> **A:** "I force demo time on the team every Thursday. It gives the
> opportunity for developers to show what they have been working on, what
> problems the have solved and are stuck on. Amongst other things they get to
> show it all in their terminal and IDE of choice. The whole team gets to
> quickly experience new stuff and how people work, what short-cuts they use.

> **Tim** "It was interesting working with jest unit testing in `--watch` mode
> so it auto runs the test everytime a file is modified."

{{< highlight bash >}}
npm run test --watch
{{< / highlight >}}

### Learning goes both ways

We also thought it was pretty cool when Tim just typed

{{< highlight bash >}}
git commit -va
{{< / highlight >}}

and all the changes showed up in the terminal, the `-v` flag is `verbose` and
the `-a` is for for staging `--all` files. The command can also be written in
long hand like this:

> {{< highlight bash >}}
git commit --verbose --all
{{< / highlight >}}

It shows all staged changes in the editor window rather than having to diff
them first. This is why we love pairing! You're always sharing knowledge, even
if it's something as seemingly small as a new shortcut for the tools you use
every day.

### Lolcommit

> **Tim** "Let's get this Lolcommit with the fireplace in it"

Disappointingly we did not get the fireplace in the shot first time around.

![pairing with Tim Lucas but no fire](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_10_tim_lucas__test_10cff08fa15.gif)

So a quick `git commit --amend` and a tilt of the laptopt sorted that out.

![commit 10 with Tim Lucas](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_10_tim_lucas_41ca4d41985.gif)

### Next time

It will be time to bight something a little bit bigger off and bring in
react-router to have routes in our app, we hope you join us then.

#### Authored By:

Selena Small & Michael Milewski
