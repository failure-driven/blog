---
title: "Commit 36 Added Named Images Controller"
date: 2018-04-29T09:00:00+11:00
excerpt: ""
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_36_lauren_hennessy_73e68261b22.gif'
images:
 - '/images/rails-camp/commit_36_lauren_hennessy_73e68261b22_static.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski 
draft: true
---

<img alt="@LKHennessy" src="//github.com/LKHennessy.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />

Commit [5581709](https://github.com/failure-driven/railscamp-search-term/commit/5581709468ae7d11372260c6f0bd0ae9023498a0)

{{< highlight bash >}}
Author: Lauren Hennessy <LKHennessy@users.noreply.github.com>
Date:   Sun Nov 25 23:41:40 2018 +1100

Add named images controller yay

Co-authored-by: Michael Milewski <saramic@gmail.com>
Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
{{< / highlight >}}

> **Q:** what did you think of our layered testing approach?

> **A:** We used to write full integration tests but now we have split out to
> request specs on the back end and frontend component tests. Most people hated
> to write selenium specs.

> We write request specs for things with consequences but maybe not for a plain
> index controller that does nothing. The controller test that I write now
> usually test permission sets and things like that.

> The request spec tests that assuming someone can do a thing that they can do
> it, only the happy path really. It doesn't test unauthorised

> **Q:** only the happy path? how do you test errors, [Selena chokes on a
> pretzel], how do you test the pretzel that I have just half choked on?

> **A:** we write code we expect to work, not the errors that may be surfaced.
> I am team lead because I am bossy, acute concern about the care of others, so
> I delegate to others, the pretzel, someone else can fix that.

> **Q:** how have you found this exeperience?

> **A:** "it was fun" (soudned like fucked up) it's probably going to make you
> sick, I touched your keyboard

> I always wanted to do it! I like the cause, to get everyone to pair for a
> whole camp. Next rails camp I will find a junior and get them to show me what
> they are coding on, I am going to do that - but move onto a conversation
> around what brought them here, deal with the person.

> **Selena:** I am shit scared to show you my code, that is less likely to
> happen but if you write some code with me you open that conversation and are
> more likely to have a real code conversation and get something done

> **Lauren:** I agree with that

> **Q:** was it easy for you to get involved in this project?

> **A:** I had trouble, geniuenly understanding the state the app was in at the
> time I came, like that there was a Rails backend

> **Q:** any tips on progressing the project?

> **A:** I think people need more time to get the context of the whole app.

## Lolcommit

![commit 36 Lauren Hennessy](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_36_lauren_hennessy_73e68261b22.gif)

#### Authored By:

Selena Small & Michael Milewski
