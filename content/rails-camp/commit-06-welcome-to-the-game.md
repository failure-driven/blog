---
title: "Commit 6 Welcome to the Game"
date: 2019-01-22T09:00:00+11:00
excerpt: "In our endeavour to pair with everyone at rails camp Hobart, our next pair Emily would be the lucky one to make that very first test written by Matt Patterson pass."
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_06_emily_coats_74791c0fa7e.gif'
images:
 - '/images/rails-camp/commit_06_emily_coats_74791c0fa7e_still.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski
draft: true
---

In our endeavour to pair with everyone at [rails camp Hobart]({{< ref
"/post/railscamp-pairing" >}}), our next pair Emily would be the lucky one to
make that very first [test written by Matt Patterson]({{< ref
"/rails-camp/commit-04-and-05-rspec-and-feature-spec" >}}) pass.

Now, we've written an integration test that incorporates the backend logic as
well as the front end behaviour. You might be wondering if the test we wrote
with rspec is going to also cover the javascript and markup. Well, it is. But
we're also going to need to start adding some unit tests at some point. 

You see, integration tests test that all components work together as expected
but we also need to ensure that each isolated unit works on its own as expected
too.

First, we got Emily to help us setup Enzyme Snapshot tests for the React
component of our game and she changed the app entry which we created in
[commit-2-create-react-app](link/to/post) to what was expected in our first
integration test, a H1 with "Welcome to the game"

With a lot of work already cut out for us, trying to share context with 36
developers, one at a time in just 48 hours - many of whom are new to or
unpracticed at TDD - we were thankful for our background in pair programming.

Our ability to navigate as each new pair approached the keyboard meant that
_they_ could get stuck in quicker.

<img alt="@gamzatti" src="//github.com/gamzatti.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />

Commit [ea441c9](https://github.com/failure-driven/railscamp-search-term/commit/ea441c9dfecf4ce2e96d5534773642ce9e16e683)

{{< highlight bash >}}
Author: Emily Coats <gamzatti@users.noreply.github.com>
Date:   Sat Nov 24 17:19:12 2018 +1100

Add welcome message

Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
Co-authored-by: Michael Milewski <saramic@gmail.com>
{{< / highlight >}}

Emily is a [vue.js](link/to/vue) developer and this was her first experience
with snapshot testing. To be honest, we have only been playing with it for a
short while and are still debating as to how usefull it actually is. 

The way it works is (**TODO**) takes a snapshot of the DOM for the React
component under test. This means if an element changes or state causes a change
in the DOM, then the snapshot changes when test are run again. You can then
verify the changes are what you expected.

To make it more manageable the snapshot is shallow rendered only rendering the
one component under test and not the hierarchy of components below or above. 

The problem, however, is that very quickly huge swaths of HTML like snapshots
are being generated which can become a nightmare as you try to find the diffs.
As you can imagine, developers who are in a rush or dont know better, are
likely to just accept those changes without double checking.

### 5 minutes with Emily

**Emily:** 

> "I see how useful this would be for refactoring to see you have not changed
> anything by accident"

To test this thought, we put a simple outer div around a component and the
snapshot basically said the whole page had changed when in fact the div had
made the snapshot indent the identical content.

> "It does seem a bit fiddly with minor changes causing big changes in
> snapshots"

The rails camp pairing experience was a great way to get an overview of how
different people work, pair and test. We learned that Emily would usually write
a unit test frist, get the code to work and then write a feature test
afterwards.

Happy with the way our group pairing went, Emily liked the idea we presented of
layered tests. 

She thought the ability to mark a test as `pending`, leaving it deliberately
failing while focussing on lower level tests and implementation was a great
approach.

### Lolcommit

![Add welcome message](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_06_emily_coats_74791c0fa7e.gif)

#### Authored By:

Selena Small & Michael Milewski

