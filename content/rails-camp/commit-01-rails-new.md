---
title: "Rails New"
date: 2018-12-04T15:00:00+11:00
excerpt: "As seasoned Rails developers, we all know that the first step in
  building any standard Rails application, is to open the command line and run
  'rails new [app_name]' One of the cool things about Rails camp though, is
  that it brings together people of all different experience levels and
  backgrounds. And who better to ask for help in spinning up a new Rails app
  than someone who'd never done it before?!"
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_01_jess_brown_85e0a9dde4d.gif'
images:
 - '/images/rails-camp/commit_01_jess_brown_85e0a9dde4d_still.jpg'
 - '/images/failure-driven_square.jpg'
aliases: [
  '/post/rails-camp/commit-1-rails-new/',
  '/rails-camp/commit-1-rails-new/'
]
author: Selena Small & Michael Milewski
---

As seasoned Rails developers, we all know that the first step in building any standard Rails application, is to open the command line and run:

{{< highlight bash >}}
rails new [app_name]
{{< / highlight >}}

One of the cool things about Rails camp though, is that it brings together people of all different experience levels and backgrounds.
And who better to ask for help in spinning up a new Rails app than someone who'd never done it before?!

Jess works on the help desk at a university and a friend had recently got her into coding. She'd started just a week before Rails Camp, installing ruby.
Excited to get started, and very quickly we got snagged in various discussions around all the things going on.

### What's a Git?

One such discussion was on Git. Rather than just explaining some concepts, we decided to show our pair what this git thing was all about.
Very quickly Jess was creating directories, git initializing them, putting files in, modifying them, seeing the diff of her changes.

Finally understanding why we use git, Jess pushed her first ever commit! Since we were off line in the wilds of Tasmania she pushed her changes to the local server running
Gogs (https://gogs.io/) a self hosted git service maintained by the organisers of RailsCamp.

<img alt="@NoislessDwindle" src="//github.com/noiselessdwindle.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />

Commit [289b842](https://github.com/failure-driven/railscamp-search-term/commit/289b8422201f3d8c5f960e18c6e700dc5318f51c)

{{< highlight bash >}}
Author: Jess Brown <noiselessdwindle@users.noreply.github.com>
Date:   Sat Nov 24 11:52:19 2018 +1100

Initial Commit

Co-authored-by: Michael Milewski <saramic@users.noreply.github.com>
Co-authored-by: Selena Small <SelenaSmall@users.noreply.github.com>
Signed-off-by: Selena Small <SelenaSmall@users.noreply.github.com>
{{< / highlight >}}

The real eye opener for Jess though, was when we pulled a copy of the commit on another machine!

> “Git is awesome. Now that I finally know what git is, I should start using it to keep track of all my changes. It is awesome!”

### What is a Server? and where is the Code?

It is a fascinating and fine line as teachers, you have to allow enough freedom for a student to feel comfortable
to voice their misconceptions and to be able to take these and turn them into a learning moment.

Having just started up a rails server for our new app, and seen a welcome page in the browser our new comrade was full of excitement!
That was until we said _"Lets kill the server"_

Jess thought that _“the server”_ was _“the code”_ she had just helped write. And in _“killing the server”_ she was worried
that we would kill all her code and move on to get someone to write it instead.

Don’t worry Jess your [commit](https://github.com/failure-driven/railscamp-search-term/graphs/contributors) is still in the repo ;)
and you are the largest contributor, by far topping out over one thousand lines!

Using the analogy that an instance of a server is like a physical library. We explained that you can go to the library,
open the door and grab a book. In this case the only book is “yay you are on rails” (the default rails page) and the only instance was on port 3000.

We opened some browser windows pointing to different ports

> [http://localhost:300**0**](http://localhost:3000)

> [http://localhost:300**1**](http://localhost:3001)

> [http://localhost:300**2**](http://localhost:3002)

hoping to show Jess that the code she helped create, was the blueprint for these new “libraries” or servers that could be instantiated on different ports.

Having never fired up the same rails app multiple times on the same computer (because why would you?), it became a little
disconcerting to be greeted on

{{< highlight bash >}}
rails server --port 3001
{{< / highlight >}}

with an error message:

> `A server is already running. Check pid. Exiting`

Not wanting to dig too deep into PID files and processes with someone who is already learning so much, we hoped for a smooth exit strategy.

Throwing it back at Jess in the hopes of buying more time to magically think up a solution. We asked her what she would do

> "There must be some sort of help manual?"

Thankfully Jess was there to help us help her! We got her to type

{{< highlight bash >}}
rails server --help
{{< / highlight >}}

which quickly found the way forward using

{{< highlight bash >}}
--pid
{{< / highlight >}}

to specify a pid file for each server

{{< highlight bash >}}
rails server --port 3001 --pid=tmp/pids/server_1.pid
rails server --port 3002 --pid=tmp/pids/server_2.pid
{{< / highlight >}}

### Have you ever had Impostor Syndrome?

During our pair session, we also discussed impostor syndrome with Jess asking if either of us had ever felt like an impostor.

**Jess:** Especially coming into the IT industry at mature age...

**Selena:** Yes. All the time. But after a while you realise that as a developer you never _really_ know what you're doing.

**Michael:** I felt the sweat gather and a bit of impostor syndrome as a teacher at the various questions around servers,
bash etc coming into this pairing session, who was I to be able to help someone understand servers and rails, there was
a lot of pressure to finish with a pleasant and successful outcome.

### 5 minutes with Jess

**Q:** How did you find the pairing, Jess?

**A:** I have trouble teaching myself and really enjoy learning in a class room so I can ask questions.
I have a mild form of ADHD - but only the ADD Attention Deficit Disorder - which means I am slower to be able to process information.
This was amazing, having two people pair with me and take me down the various paths I needed to explore in order to learn!

### lolcommit

Oh and yes the camera was rolling to capture the emotion straight after almost 2 hours of pairing and that first rails commit.

![initial commit](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_01_jess_brown_85e0a9dde4d.gif)

#### Authored By:

Selena Small & Michael Milewski

