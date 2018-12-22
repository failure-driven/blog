---
title: "Add Rspec and Feature Spec"
date: 2019-01-04T09:30:00+11:00
excerpt: ""
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_04_matt_patterson_22212c2fea9.gif'
images:
 - '/images/rails-camp/commit_04_matt_patterson_ed182d1c315_still.jpg'
 - '/images/failure-driven_square.jpg'
draft: true
---

With the last 3 commits we were well on the way to finishing our "iteration 0"
so to speak. We had the ability to fire up Rails and a React app. There was one
more step required for us to write any actual code. That step was to set up a
testing framework for clearly we are not going to write any code without
writing a test first?

The idea of writing a test for functionality that does not exist sounds weird
at first. This style of app development is called **"Test Driven Development"**
or **TDD** for short. The idea is that you drive out new functionaily by writing a
test first. Not only were we planning to be "Test" driven but more so start by
being "Behaviour" driven. This means that rather than just starting with
something our code may need to do, focus on the user of our code and the
behaviour that the user expects. This is called **"Behaviour Driven
Development"** or **BDD** for short.

In our case the app we were planning on writing was a game and the first bit of
functionality that we may want is to allow a user of the internet to come to
our landing page and be informed with a welcome message that this is a game
like "Welcome to the Game". Now rather than rush in and just add a page that
displays the welcome message, we will write a test first.

A BDD test can be simplified into 2 states and a function.

1. The state before the function is run

  **Given** that the server is running in default mode

1. The function to change state

  **When** I visit the root url of the server

1. The state after the function is run

  **Then** assert that the welcome message is displayed as expected

So why is testing important? and more so why is test driving critical? Tests
give us developers confidence that certain functionality works. In our case if
ever the user could not come to the first page or could not be directed to the
fact that this app is a game then we would have a failing test. This means that
as the app grows, so do our tests and if we need to make large changes in the
code base we have confidence to refactor, and improve our code base over time
and we will not regress on any functionality. The only way to make sure you can
test certain behaviour in your code is to start out by writing the test first.
It may be tempting to write the code and only later attempt to write a test but
often developers find out that given the code they have written, it is hard to
test. Or they think they wrote a test but as they never have seen it fail they
may not be testing what they think they were testing. Inevitibly if not testing
first it is hard to know that every path has been exercised.

In our case, we also wanted to pair with everyone at rails camp and TDD allows
us to chunk the work down into small pieces, even tiny pieces if need be.
Writing a failing test could be such a small test. This was critical as we had
limited time with each of 36 developers at rails camp so each of them would
only have time to contribute a small part. Also the only way to easily hand
over code to the next developer is if there is a way to document what has been
done and what we are up to. Test play this role well.

In our case using Rails for the backend we chose RSpec for the testing
framework and our next pair, Matt Patterson, was up for the job of helping us
add the framework and that first test.

**TODO** do we talk about pending here?

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

> "It was nice"

> "Are you teachers"

This was great, he was only our 4th victim for our pairing marathon with
everyone at camp and already we were showing some level of credibility in our
approach, bringing him up to speed, explaining things along the way and making
it a fun experience.

> **Selena** "No Matt, we have no credibility as teachers [laugh] but well we
> are doing this as we are trying to get some!"

After all the highest level of understanding is to teach others. It was nice to
finish off with some developer banter about home tech projects. Developers are
people after all and social beings so as much as we are depicted as solo coding
with headphones and hoodies to shy away from the rest of the world, pairing is
certainly a healthier way to code.

> "Yeah at home I play around with all sorts of tech. I even have a small
> torrent server setup for my mum up in Queensland. It runs on port 9091.
> Localy I run a hydroponics setup with my RasPi, for my um .. 'herbs'"

> "oh shit did I just say that? off the record (laughter)"

Well clearly not off the record

And we all got some good laughs and some learnings from it. Matt explored the
ability to see if he could actually run the RSpec tests from the Procfile. This
would be a Procfile task that would startup the server and run the RSpec tests?
This was a great excursion into what may be possible, in our short time
together we did not manage to make it possible but we certainly gave it a try.
The idea being to have a Foreman Procfile which would fire up the test server
and run the tests if they are successfull. In the end we went for the more
traditional approach that we run the server setup with Foreman and run the
tests as a seperate bash command and separate process.

As a last thing we also picked up a different VI shortcut. To Delete from the
cursor to a given match you can type

{{< highlight bash >}}
d/<match>
{{< / highlight >}}

**d** to delete, followed by **/** to start regex search, followed by the match
string to actually match. As with VI shortcusts, once you get it you get it and
it just make sense but learning to use new shortcuts is a whole lot of practice
and a whole other story.

### Lolcommits

Not always does the first lolcommit work

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

