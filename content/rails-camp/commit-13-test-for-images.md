---
title: "Commit 13 Test for Images"
date: 2019-01-30T09:30:00+11:00
excerpt: ""
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_13_cameo_langford_359a73f6b08.gif'
images:
 - '/images/rails-camp/commit_13_cameo_langford_359a73f6b08_still.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski
draft: true
---

> **Cameo:** "what time is it?"

> **A:** "it is almost 2am"

We were digging deep now at [rails camp Hobart]({{< ref
"/post/railscamp-pairing" >}}) and to add to the difficulty of bringing someone
up to speed on a new project we were working with a keen but tired Cameo who
was only half way through her [Coder Academy](https://coderacademy.edu.au/)
course on how to program.

Amazingly we managed to make the pending test pass as well as learning about
`React.Fragments`, more info can be found in the reactjs [framgments
documentation](https://reactjs.org/docs/fragments.html)

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

You can use a Fragment

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
shortcuts and new usages. There is no need to be embaraced that maybe we had
not read the complete React documentation! we were willing to give someone new
in the field the satisfaction that they can teach an old hack a thing or two.

### 5 minutes with Cameo

> **Q:** do did you learn anything new?

> **A:** Yes, the testing framework you were using, Jest? and the idea of using
> `--watch` to have the tests run continually as we were saving the file? that
> was cool. also the enzyme snapshot testing.

> **Selena:** Well we learnt something from you as well, about `React fragment` and
> the short form `<>...</>` as well as for props that are true we can just pass
> the routes `exact={true}` can simply be `exact`, other than that what was the
> highlight? talking to us?

> **Cameo:** [nod]

> **Michael:** I knew it!

> **Cameo:** no it was cool, it was fun!

> **Q:** what do you want to do next? more testing?

> **A:** no going to bed, I am always excited about going to bed!

### Lolcommit

after a quick show of how lolcommits work

![Michael and Selena show how lols are created](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_13_selena_small_bff4a932a85.gif)

Cameo and her friend Bashir in the background joined in

![commit 13 with Cameo](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_13_cameo_langford_359a73f6b08.gif)

#### Authored By:

Selena Small & Michael Milewski

