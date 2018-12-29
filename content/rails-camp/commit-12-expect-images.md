---
title: "Commit 12 Expect Images"
date: 2019-01-28T09:30:00+11:00
excerpt: "Starting to get well into the middle of the night at rails camp
Hobart and we still didn't have an image displayed in our app! An app who's whole point was to show images and have people guess what they see in the image. With fatigue starting to set in, the mere dialog taking place to try and establish what to call our next collaborator really just shows how tired we'd become."
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_12_jon_leighton_e1dbe3e3ee8.gif'
images:
 - '/images/rails-camp/commit_12_jon_leighton_e1dbe3e3ee8_still.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski 
draft: true
---

Starting to get well into the middle of the night at [rails camp
Hobart]({{< ref "/post/railscamp-pairing" >}}) and we still didn't
have an image displayed in our app! An app who's whole point was to show images
and have people guess what they see in the image. With fatigue starting to set in, the mere dialog taking place to try and establish what to call our next collaborator really just shows how tired we'd become.

> **Michael** "Is it Jo?"

> **Jon** "No, Jon."

> **Michael** "J-o-y ?"

> **Jon** "No, Jon."

> **Michael** "John."

> **Jon** "Sort of... but with no `h`"

> **Michael** "Joh?"

> **Jon** "No, Jon!"

Finally succeeding to introduce ourselves, we just had to ask

> "Jon, were you a werewolf?"

You see, one of the near mandatory pass times of Rails Camp is to play a game of
[werewolf](https://en.wikipedia.org/wiki/Werewolf) and we had just come back to
code from a game with almost the whole camp. It was an epic game lasting well
over 3 hours. 

Actually judging by this commit

> [1a3f44d](https://github.com/failure-driven/railscamp-search-term/commit/1a3f44d31def8160b6f7ff4a14a297055c037b36)
at `Sat Nov 24 20:10:36 2018`

and this commit

> [79cb3dd](https://github.com/failure-driven/railscamp-search-term/commit/79cb3dd3bbe62e58826b3ce9b79eae68e4ef76f9)
`Sun Nov 25 00:16:04 2018`

it was clear that the game lasted some time between 3 - 4 hours.

The repo from this obsessive project trying to code with everyone at rails camp showed three clear breaks of about 4 hours, 
  
  - 1 game of werewolf
  - Saturday night's sleep
  - Sunday night's sleep

<img alt="@jonleighton" src="//github.com/jonleighton.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />

Commit [79cb3dd](https://github.com/failure-driven/railscamp-search-term/commit/79cb3dd3bbe62e58826b3ce9b79eae68e4ef76f9)

{{< highlight bash >}}
Author: Jon Leighton <jonleighton@users.noreply.github.com>
Date:   Sun Nov 25 00:16:04 2018 +1100

Add failing assertion for image on round 1

Co-authored-by: Michael Milewski <saramic@gmail.com>
Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
{{< / highlight >}}

The change Jon helped us make was small. A pending spec to assert that images
will be displayed on the page. This does highlight that one of the benefits of
TDD (Test Driven Development) is being able to take smaller steps where necessary. 
The benefit here is obviously small commits are going to be easier to reason about with new people to the project like Jon. Also as fatigue sets in, in the middle of the
night at Rails Camp, small commits are going to be less risky.

### 5 minutes with Jon

As the commit was small and done we decided to discuss working practices with
Jon.

> **Q:** Jon, what did you think of our way of working? test driving
> everything, working on master and pairing?

> **A:** I found the idea of testing entertaining and I was amused by working on
> master.

> As for pairing, I felt there was good banter and comaraderie in the group,
> the three of us, you two are a hoot to pair with! I would definitely do it
> again!

> As for working on master, what the hell? I am strongly opposed to working on
> master. I must say that all in all I enjoyed the experience.

> In fact I heard about the project you guys were doing via my girl friend and
> I was going to approach you guys to see what it was all about.

> **Q:** Where do you work? What do you do?

> **A:** I work for a bank, like a real bank! A bank with real money!

> **Q:** So not some kind of phoney with only money on the block chain?

> **A:** Nothing on the block chain and not working on Master either, not if I
> can help it!

> **Q:** And what fine institution is that?

> **A:** I work for [Up](https://up.com.au/), well for the company
> [Ferocia](http://www.ferocia.com.au/), we write the software
> behind the bank Up as well as Bendigo bank's online banking.

In the end Jon gave us his real feelings about working and commiting directly
to the master git branch

> "No one is working on master - that would be fucking stupid"

### Lolcommit

Jon attempted to show us the roller coaster ride that is working on master in
his opinion.

![commit 12 with Jon Leighton](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_12_jon_leighton_e1dbe3e3ee8.gif)

#### Authored By:

Selena Small & Michael Milewski
