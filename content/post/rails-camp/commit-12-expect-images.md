---
title: "Commit 12 Expect Images"
date: 2019-01-28T09:30:00+11:00
excerpt: ""
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_12_jon_leighton_e1dbe3e3ee8.gif'
images:
 - '/images/rails-camp/commit_12_jon_leighton_e1dbe3e3ee8_still.jpg'
 - '/images/failure-driven_square.jpg'
draft: true
---

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

It was starting to get well into the middle of the night and we still didn't
have an image displayed in our app. An app who's whole point was to show images
and have people guess what they see in the image. Michael was showing fatigue
kick in as he could not comprehend our next collaborators name.

> **Michael** "is it Jo?"

> **Jon** "no Jon"

> **Michael** "J-o-y ?"

> **Jon** "no Jon"

> **Michael** "John"

> **Jon** "sort of but with no `h`"

> **Michael** "Joh?"

> **Jon** "no Jon"

and so it went literally 10 times over. Finally when we were properly
introduced we could get onto real questions related to RailsCamp

> "Jon, were you a werewoolf?"

The change Jon helped us make was small. A pending spec to assert that images
will be displayed on the page. This does highlight that one of the benefits of
TDD (Test Driven Development) is being able to take as small steps as are
needed at times and sometimes bigger ones can also be taken. The benefit here
is obviously small commits are going to be easier to reason about with new
people to the project like Jon. Also as fatigue sets in, in the middle of the
night at RailsCamp, small commits are going to be less risky.

**TODO** go on about size of commits?

As the commit was small and done we decided to discuss working practices with Jon.

Jon, what did you think of our way of working? test driving everything, working
on master and pairing?

> "I found the idea of testing entertaining and I was amused by working on
> master"

> "As for pairing, I felt there was good banter and comaraderie in the group"

> "I would definitely do it again!"

**TODO** sort this out
  Strongly opposed to working on master

  Enjoyed the experience

  This was late on Saturday night
  Heard about the project through gf and half-way approached us

  a bank
  a real bank with real money
  not ont he block chain
  and not on master - not if I can help it

  Up Ferocia - and do Bendigo bank online banking

In the end Jon gave us his real feelings about working and commiting directly
to the master git branch

> "No one is working on master - that would be fucking stupid"

![commit 12 with Jon Leighton](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_12_jon_leighton_e1dbe3e3ee8.gif)

#### Authored By:

Selena Small & Michael Milewski

