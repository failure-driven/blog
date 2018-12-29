---
title: "Commit 13 Test for Images"
date: 2019-01-30T09:30:00+11:00
excerpt: "We were digging deep now at rails camp Hobart at 2 oclock in the morning! Adding to the difficulty of bringing someone up to speed on our project, Cameo who was keen but extremely tired, was only half way through her Coder Academy course on how to code."
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_13_cameo_langford_359a73f6b08.gif'
images:
 - '/images/rails-camp/commit_13_cameo_langford_359a73f6b08_still.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski
draft: true
---

> **Cameo:** "What time is it?"

We were digging deep now at [rails camp Hobart]({{< ref
"/post/railscamp-pairing" >}}) at 2 oclock in the morning! Adding to the difficulty of bringing someone up to speed on our project, Cameo who was keen but extremely tired,
was only half way through her [Coder Academy](https://coderacademy.edu.au/)
course on how to code.

Amazingly we managed to make the pending test pass as well as learning about [React.Fragments](https://reactjs.org/docs/fragments.html)

<img alt="@cameocodes" src="//github.com/cameocodes.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />

Commit [3816fa1](https://github.com/failure-driven/railscamp-search-term/commit/3816fa1d055a75c1ecefdd632380fec3695da52e)

{{< highlight bash >}}
Author: Cameo Langford <cameocodes@users.noreply.github.com>
Date:   Sun Nov 25 01:53:35 2018 +1100

Created component test to render image in Round

Co-authored-by: Michael Milewski <saramic@gmail.com>
Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
{{< / highlight >}}

The basic gist is that rather than

{{< highlight react >}}
  <div>
    <h2>This is round 1</h2>
    <img src=""/>
  </div>
{{< / highlight >}}

You can use a Fragment like this

{{< highlight react >}}
  <React.Fragment>
    <h2>This is round 1</h2>
    <img src=""/>
  </React.Fragment>
{{< / highlight >}}

or you can simply use the short syntax

{{< highlight react >}}
  <>
    <h2>This is round 1</h2>
    <img src=""/>
  </>
{{< / highlight >}}

This is a bit weird but again that is often how develoeprs pick up little
shortcuts and new usages. There was no need to be embarassed that maybe we hadn't quite read the complete React documentation... we were willing to give someone new
in the field the satisfaction that they can teach a pair of old hacks a thing or two!

### 5 minutes with Cameo

> **Q:** How did you find the experience pairing with us, did you learn anything new?

> **A:** Yes, the testing framework you were using, Jest? And the idea of using
> `--watch` to have the tests run continually as we were saving the file? That
> was cool. Also the enzyme snapshot testing was new to me.

> **Selena:** Well we learnt something from you as well, about `React fragment` and
> the short form `<>...</>`. What was your highlight from this experience? Talking to us?

> **Cameo:** [nod]

> **Michael:** I knew it!

> **Cameo:** No, it was cool. I had fun!

> **Q:** What do you want to do next? More testing?

> **A:** No. I want to go to bed, I'm always excited about going to bed!

### Lolcommit

After a quick show of how lolcommits work

![Michael and Selena show how lols are created](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_13_selena_small_bff4a932a85.gif)

Cameo and her friend Bashir joined in

![commit 13 with Cameo](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_13_cameo_langford_359a73f6b08.gif)

And we finally let her to go off to bed!

#### Authored By:

Selena Small & Michael Milewski
