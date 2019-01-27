---
title: "Autofocus text area"
date: 2018-03-18T09:00:00+11:00
excerpt: 'Although there was a lot of support for our "The Rails Camp
Project", at Rails Camp Hobart, there was not always support for our
practices of pairing and testing. James challenged us on that but
ultimately we were technologists making an app work better and talk
technology.'
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_22_james_martelletti_29385d82754.gif'
images:
 - '/images/rails-camp/commit_22_james_martelletti_29385d82754_static.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski
draft: true
---

Although there was a lot of support for our ["The Rails Camp
Project"]({{< ref "/post/railscamp-pairing" >}}), at
Rails Camp Hobart, there was not always support for our practices of
pairing and testing. James challenged us on that but ultimately we were
technologists making an app work better and talk technology.

The making the app work better was to optimise the way the answer could
be intput by making the text box focused by default.

<img alt="@jmartelletti" src="//github.com/jmartelletti.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />

Commit [3b5d8d0](https://github.com/failure-driven/railscamp-search-term/commit/3b5d8d0860f4b4ba0722a668717265fae7a9be7a)

{{< highlight bash >}}
Author: James Martelletti <jmartelletti@users.noreply.github.com>
Date:   Sun Nov 25 14:58:30 2018 +1100

Autofocus textarea for speeeeedy answers

Co-authored-by: Michael Milewski <saramic@gmail.com>
Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
{{< / highlight >}}

### 5 minutes with James

> **Q:** how was the exeprience? You jokingly mentioned we were going to bully
> you into taking part at some stage, what was the level of bullying?

> **A:** You see I am not usaully a pair programmer. It's been a while. I
> mostly do spikes here and there, I think I am a bit of a cowboy coder. I
> amnot like straight on the server or anything, but yeah I have done plenty of
> that in my time

> **Q:** so what kind of coding do you do in your role? do you test drive much?

> **A:** I have the luxury of not performing all the correct TDD (Test Driven
> Development) things, I suppose you guys are looking at me as if that is not a
> luxury but some kind of disease. I think the value of tests come from having
> valuable tests, I do a lot of code prototyping, seeing how things work and if
> you value speed to see how things works to be able to feed into an
> implemetation later on. A spike concept does not need tests. I help break
> down the problem for feasability.

> **Q:** do you every pair or test?

> **A:** when we build properly we will test and even mob program but not test
> first, not the way I like it. You can write the code first you know.

> **Selena:** You can totaly drive your development through your tests first.

> **A:** I feel it slows me down a frustrating amount. I am in a position that
> I can get away with it, working on the edges of the business and not the
> essential core of the business

> **Q:** You are not a test first guy?

> **A:** Not a test first guy, never have been never will be not a pair
> programmer

> **Q:** This experience has not changed you? You had a terrible time?

> [silence]

> **A:** not a terrible time but I was forced into this situation. Look I do
> see the value.

> **Q:** would you enforce testing at work?

> **A:** I don't enforce TDD but definitye stuff should be covered with
> testing. My mehthod of working is very ADD Not much time to focus on pair
> programming kind of work. I find pair programing frustrating.

> **Q:** How do you get your team to work the way you want them to work?

> **A:** I work at higher architercture level. How things integrate together
> that kind of thing.

> **Q:** and where do you work at the moment?

> **A:** I am the founder of [hava.io](https://www.hava.io/) which visualises
> your existing cloud infrastructure and network topology automatically. Put it
> this way, I have a lot of access to a lot of pepoles envoirments.

> The product is about discovering those services and visualising them. Humans
> are then good at anomoly detection, kind of like a massive spot the
> difference once the services are visualised. This visualisation allows for
> network diagnoses and security audits.

> **Q:** and what did you get out of todays session on pairing and test driving?

> **A:** I got out of it that I was always correct! Testing isnot for me, it's
> not my style. I started in writing Basic and C, there was not much in terms
> of testing back then. In fact growning up with the development of internet
> technologies was so easy, things were simple and slowly evolved so following
> along was simple as things would take some years to develop.

> These days though there are some many technologies and evolving concpets. I
> imagine it would be extremely hard to keep up to date and understand how
> these things have evolved. In my case all the various network libraries and
> how they have evolved.

> **Q:** Boot camps for coding - thoughts?

> **A:** I have seen good results from people! it covers all the things that
> you don't know that you don't know. If you want to go down this path, it will
> package up all the things you need to know. I belveive to become a developer
> or technoloigist you need to be a patrticular type of person. People who get
> passionate about technology. These people ignite at the challenge and work
> hard to keep on top of the changing technology landscape and move forward.

> **Q:** What most surprised you about our time pairing together today?

> **A:** You got me to do something I didn't want to do, and you did it with
> great success! well done!

## Lolcommit

![commit 22 James Martaletti](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_22_james_martelletti_29385d82754.gif)

### Next time

Now that the user could easily enter a guess, join us next time for
working out if the guess is actually correct. That and a comparison of
our app to a banking app.

#### Authored By:

Selena Small & Michael Milewski
