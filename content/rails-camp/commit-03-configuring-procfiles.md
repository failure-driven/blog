---
title: "Configuring procfiles"
date: 2018-12-21T09:30:00+11:00
excerpt: "Although a large proportion of rails developers use Macs, it is certainly not mandatory and people can effectively code using Windows or a flavour of linux. This was the case with Isikyus who although was proud of his own setup using ubuntu, was quick to get his hands on the keyboard and just as quick to voice his frustration with the differences with the Mac. "
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_03_edward_0f515e5ecc3.gif'
images:
 - '/images/rails-camp/commit_03_edward_0f515e5ecc3_still.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski
---

<img alt="@isikyus" src="//github.com/isikyus.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />

Commit [a8a752f](https://github.com/failure-driven/railscamp-search-term/commit/a8a752f2cf2d3be7f204ee028a5ff52d51e7dda7)

{{< highlight bash >}}
Author: Isikyus <isikyus@users.noreply.github.com>
Date:   Sat Nov 24 14:48:43 2018 +1100

Procfile to run client and server together

Co-authored-by: Michael Milewski <saramic@gmail.com>
Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
{{< / highlight >}}

Although a large proportion of rails developers use Macs, it is certainly not mandatory and people 
can effectively code using Windows or a flavour of linux. This was the case with Isikyus who although 
was proud of his own setup using ubuntu, was quick to get his hands on the keyboard and just as quick 
to voice his frustration with the differences with the Mac. 

> “There is no caps lock, this sucks” 

In this case, the MacBook Pro being used had the `caps lock` maped to `esc` because of the fancy but 
rather inconvenient touch bar. Who needs a caps lock key anyway? Well, Isikyus and people who are used 
to using it, of course.

By the time we got to Isikyus, we already had rails server running and a react app set up, so there 
was a whole lot of context to share. On top of that the idea of two confident developers approaching 
you to come and code with them as they sit either side looking over both shoulders, well…
 
...Let’s just say that it took a little while for us all to get to know each other, to be able to 
talk about that context. 

Dealing with personality differences and clashes can be difficult in a collaborative environment, 
but in a short period of time we needed to create a high performance team in our little threesome, 
which meant finding a way to deal with those differences and ultimately create a level of psychological 
safety. As a friend of ours recently tweeted

> “The number one thing that is central to high performing teams is psychological safety"
> {{< tweet 1070563864721293312 >}}

If you’ve read this far, you’re probably wondering if we even wrote any code with Isikyus. What we 
wanted him to help us with was coming up with a straightforward way to use the [Foreman](https://github.com/ddollar/foreman) 
gem for publishing both our Rails backend and our React frontend on different ports.

We’d already done this before on another version of the project, so we kind of already knew the answer. 
But it was fascinating to receive the push back from our pair, allowing him to help us as we’d initially 
requested of him.

Soon enough, we found ourselves diving through the depths of Foreman parsing to find the format needed 
for our Proc file because to be honest, Foreman’s documentation was not that great.

We’d initially been thrown because Foreman kept published to ports 5000 and 5100 and we couldn’t seem
to pass a custom port as an environment variable to the `forman start` command.

At one point, we thought there was maybe a subshell running which was unable to receive the correct 
variables. Eventually, Sam, who was sitting across the room, set us in the right direction by telling  
us that by default, Foreman sets PORT for the first line in your procfile to 5000 and increments by 100.

Finally, with a deep exploration of Foreman’s inner workings and a bit of help from some other developers 
nearby, we figured out that we just needed to export an environment variable with a slightly different name.

{{< highlight bash >}}
export PUBLIC_PORT=$PORT
{{< / highlight >}}

### lolcommit

In the end we had a great time together, solved the problem and the camera was rolling to capture the commit.

![initial commit](http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_03_edward_0f515e5ecc3.gif)

#### Authored By:

Selena Small & Michael Milewski

