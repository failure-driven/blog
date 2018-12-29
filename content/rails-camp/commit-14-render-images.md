---
title: "Commit 14 Render Images"
date: 2019-02-04T09:30:00+11:00
excerpt: "Having followed along with Cameo on the introduction to our rails camp
Hobart project, seeing all the tests pass, our next commrade Ethan was already up to speed with what was going on. One thing he noted though, was..."
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_14_eathan_langford_2b21d630629.gif'
images:
 - '/images/rails-camp/commit_14_eathan_langford_2b21d630629_still.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski 
draft: true
---

Having followed along with Cameo on the introduction to our [rails camp
Hobart]({{< ref "/post/railscamp-pairing" >}}) project, seeing all the tests pass, our next commrade Ethan was already up to speed with what was going on. One thing he noted though, was that when you actually used the app there was no image because the image source was not set! 

We explained that the app would end up being like the app we built for a [Ruby Meetup talk]({{<ref "/presentations/20181031-failing-for-the-right-reason" >}}) which would render images from a search engine for users to guess the 'serch term' that was used to find the images. The problem at Rails Camp was that without interent there were no search
engines to get images from.

So Ethan, where could we get images from? He'd been following our progress with his fellow Coder Academy buddy and said why not just use a Lolcommit and the game can be guess the 3 people pairing in the gif? 

It's these small yet priceless insights that make pairing so exciting. Two heads are always better than one. And in this case a third is even better!

Saving complication, since it was after 2am on a Saturday night, we took one of our lolcommits from the day and added it to the app.

<img alt="@EathanLangford" src="//github.com/EathanLangford.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />

Commit [8af7028](https://github.com/failure-driven/railscamp-search-term/commit/8af7028178627bb46272aa3cd0e7b951dc145233)

{{< highlight bash >}}
Author: Eathan Langford <EathanLangford@users.noreply.github.com>
Date:   Sun Nov 25 02:17:13 2018 +1100

rendering image

Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
Co-authored-by: Michael Milewski <saramic@gmail.com>
{{< / highlight >}}

### 5 minutes with Eathan

> **Q:** You said you saw the meetup where we presented a first version of
> this app?

> **A:** Yeah, I was there, the game broke on my phone :( it was a Huawei, I
> got a score of zero.

> **Q:** What did you get out of todays activity?

> **A:** I never did any testing in any capacity, never did it before. I think
> we do it in the last part of the Coder Academy course. I have heard of [TDD](link/to/wiki), it sounds like it will open up my employment
> opportunities and I am interested in knowing more.

> Nah, like, testing is cool, I have always thought of how it would work
> and now I have seen it, it is cool.

> **Q:** What job were you doing prior to Coder Academy?

> **A:** I am a tattoo artist. I still do a few tattoo's on the weekends. This
> whole testing first and failure driven thing you guys are all about does
> remind me of one piece of art I did for a daughter who's mother had passed away.
> It was something like "Strength, Hope and Courage" and I miss spelt strength.
> No one new till 3 hours later she put it on facebook and someone in the
> comments told her.

> Fucking up tattoos and then covering them up to pass, is that test driven
> tattooing?

> **Q:** Wow! That is quite a story, how did you fix that?

> **A:** After the fuck up I paid for laser removal and as I had a good ongoing
> friendship with the client so she got me to fix it. I tattooed her a few times before
> the accident, we were pretty close as tattooer and client.

## Lolcommit

![commit 14 Eathan Langford](http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_14_eathan_langford_2b21d630629.gif)

#### Authored By:

Selena Small & Michael Milewski
