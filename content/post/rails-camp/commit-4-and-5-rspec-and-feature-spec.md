---
title: "Add Rspec and Feature Spec"
date: 2019-01-04T09:30:00+11:00
excerpt: "With the ability to fire up Rails and a React app, there was one more configuration 
step required for us to write any actual code. That step was to set up a
testing framework!"
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_04_matt_patterson_22212c2fea9.gif'
images:
 - '/images/rails-camp/commit_04_matt_patterson_ed182d1c315_still.jpg'
 - '/images/failure-driven_square.jpg'
draft: true
---

With the ability to fire up Rails and a React app, there was one more configuration 
step required for us to write any actual code. That step was to set up a
testing framework!

As developers who come from a strong testing background, we are obviously _not_ going 
to be teaching anyone to write code without driving the need with a test.

The idea of writing a test for functionality that does not exist sounds weird at first. This style of app development is called [Test Driven Development](link/to/wikipedia) (TDD). The idea is that new functionality is driven out by writing a test first. 

More specifically, the way we like to test drive applications is to focus first on how
a user might expect our app to work. This style of testing, known as [Behavioural Driven Development](link/to/wiki) means that we not only test functionality of individual lines of code, we also test our expected user experience.

In this experiment we were planning to build a game, withe the first piece of functionality being that a user navigating to the game would be greeted with a welcome message. 

Not much functionality to it really, but if that message was to change in the future for some unknown reason we would want to know about it as soon as possible. And for that reason, the first thing we would write before building the page is a test!

A BDD test can be simplified into 2 states and a function.

* The state before the function is run

    **Given** that the server is running in default mode

* The function to change state

    **When** I visit the root url of the server

* The state after the function is run

    **Then** assert that the welcome message is displayed as expected

### So why is testing important? 

And more importantly, why is test driving critical? Tests give us confidence that certain functionality works and that changes in one place don't break things in ohter places. In fact, `test driven development`, is often more correctly refered to as `test driven design` because it not only helps us to test funtionality but also to test our design ensuring decoupled code where changes in one place couldn't possible break things in other places.

Many developers are tempted to just the write the code first and maybe add a test for it later on, you know, if they have time. Despite your first thought, **This is not faster or more efficent!** It's much harder to write a test after the implementation and the resulting tests that are written often fool the developers writing them where they think they wrote a test but having never seen it fail can't be sure that the test they wrote actually covered the code they implemented.

Wanting to pair with everyone at rails camp, TDD was great allowing us to chunk the 
work down into small pieces, even tiny pieces if need be.

Writing a failing test could be such a small test. This was critical as we had
limited time with each of 36 developers at rails camp so each of them would
only have time to contribute a small part. Also the only way to easily hand
over code to the next developer is if there is a way to document what has been
done and what we are up to. Tests play this role well.

Another major reason for wanting to write quality tests is because it also doubles as clear documentation. Theoretically, a new developer coming along should be able to read existing tests and gather an understanding of precisely how the system currently works.

Since we used Rails for the backend, we went with the well-known RSpec testing framework and our next pair, Matt Patterson, was up for the job of helping us add the framework so we could move forward.

<img alt="@mattpatterson94" src="//github.com/mattpatterson94.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />

Commit [7af2112](https://github.com/failure-driven/railscamp-search-term/commit/7af2112fc10a2f93dfc182de0adb5958c0029d45)

{{< highlight bash >}}
Author: Matt Patterson <mattpatterson94@users.noreply.github.com>
Date:   Sat Nov 24 15:22:19 2018 +1100

Add rspec to gemfile and initialize

Co-authored-by: Selena Small <SelenaSmall@users.noreply.github.com>
Co-authored-by: Michael Milewski <saramic@users.noreply.github.com>
{{< / highlight >}}

Commit [05c8c9b](https://github.com/failure-driven/railscamp-search-term/commit/05c8c9b9adafd36831e6399ac1a1694cd7fbb8d0)

{{< highlight bash >}}
Author: Matt Patterson <mattpatterson94@users.noreply.github.com>
Date:   Sat Nov 24 16:07:38 2018 +1100

Configure tests to use foreman and capybara.

Co-authored-by: Michael Milewski <saramic@gmail.com>
Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
{{< / highlight >}}

After Matt helped us with that first test we asked him some questions on the
experience, starting off with how he found it.

### 5 minutes with Matt

**Q:** How did you find the pairing/testing experience?

**A:** It was nice. Are you teachers?

**Selena:** No Matt, we have no credibility as teachers [laugh] but we're trying to get some!

**Q:** Do you write code outside of work? Are you working on interesting side projects?

**A:** Yeah at home I play around with all sorts of tech. I even have a small torrent server setup for my mum up in Queensland. It runs on port 9091.
Localy I run a hydroponics setup with my RasPi, for my um .. 'herbs.' Oh shit did I just say that? off the record (laughter...)

**note:** _that last comment was off the record guys..._

Matt explored the ability to see if he could actually run the RSpec tests from our Procfile. This would be a Procfile task that could startup the server and run the 
RSpec tests. Cool idea. Unfortunately, in our short time together we did not manage to make it possible but we certainly gave it a try!

The idea was to have a Foreman Procfile which would fire up the test server
and run the tests if they are successfull. In the end we went for the more
traditional approach - running our server setup with Foreman in one shell and running the tests in a second shell with another command.

Not only did we teach him a few things, Matt also taught us a new shortcut for VI!

{{< highlight bash >}}
d/<match>
{{< / highlight >}}

This allows you to delete from the cursor to whatever <match> you specify

### Lolcommits

Sometimes you need a couple of lolcommits to get one that actually works...

<div style="display: flex;">
  <img alt="test 1" src="http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_04_matt_patterson__test_1_f9daaa2ecac.gif">
  <img alt="test 2" src="http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_04_matt_patterson__test_2_ed182d1c315.gif">
</div>

3rd time the charm

![commit 4 with Matt Patterson](http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_04_matt_patterson_22212c2fea9.gif)

And a second commit for fun

![commit 5 with Matt Patterson](http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_05_matt_patterson_8e85e82e854.gif)

### Resources

- more on [Given/When/Then](https://martinfowler.com/bliki/GivenWhenThen.html)
- [levels of learning](http://www.zingtrain.com/content/levels-learning)

#### Authored By:

Selena Small & Michael Milewski

