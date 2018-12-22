---
title: "Commit 6 Welcome to the Game"
date: 2019-01-05T09:30:00+11:00
excerpt: ""
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_06_emily_coats_74791c0fa7e.gif'
images:
 - '/images/rails-camp/commit_06_emily_coats_74791c0fa7e_still.jpg'
 - '/images/failure-driven_square.jpg'
draft: true
---

In our endeavour to pair with everyone at [rails camp Hobart]({{< ref
"/post/railscamp-pairing" >}}), our next pair was Emily who was going to
make that very first test from [rails camp Hobart]({{< ref
"/post/rails-camp/commit-4-and-5-rspec-and-feature-spec" >}}) pass.

For this to happen we would drive from our BDD (Behaviour Driven Development)
layer down to a TDD (Test Driven Development) layer in this case in the ReactJS
front end. The idea that the outer BDD layer of tests stays specific at a user
driving the system and at the inner layer of tests we have tests that are more
programatic units.

In this case Emily helped us setup Enzyme Snapshot tests and changed the base
App.js of the react app that was created with `npx create-react-app` to say
what was specified in the original spec, a H1 with "Welcome to the game"

Pairing and testing for the win. As already mentioned it would be a hard task
onboarding 36 developers onto a new code base within 48 hours and for many of
them a new way of working. Pairing was certainly accelerating getting the hands
of the guest developer on the keyboard and the tests were a great way to show
them what the app does now and what we are up to, either writing another test
or implementing a test that is failing as it is driving out new functionality.

**TODO** do we bring in the layers of tests here? the component ReactJS tests vs the BDD integration tests?

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

Emily is a vue.js developer and she mentioned this was her first experience
with snapshot testing. We are still debating as to how usefull it is. The idea
is taking a snapshot of the DOM of the React component under test. This means
if something changes the snapshot changes as well. To make it more manageable
the snapshot is shallow rendered only rendering the one component under test
and not the hierarchy of components below or above. The problem is that very
quickly huge swaths of HTML like snapshots are being generated and as they
change a developer is most likely to just say, yes to all sorts of changes.
There is certainly no Test Driven aspect to them.

**TODO** put in an example of a snapshot test and output?

> **Emily** "I see how useful this would be for refactoring to see you have not
> changed anything by accident"

As a test we put a simple outer div around a component and the snapshot
basically said the whole page had changed when in fact the div had made the
snapshot indent the identical content.

> "It does seem a bit fiddly with minor changes causing big changes in
> snapshots"

The rails camp pairing experience was a great way to get an overview of how
people work, pair and test. In the Case of Emily she would usually write a unit
test frist, get the code to work and then write a feature test afterwards.

Emily was happy with the way the pairing went. She liked the idea of the
layered tests between BDD and TDD. The ability that pending a test allowed you
to write a test first at the BDD level and leave it delibaretly failing. This
allowing you to focus on the next layer of test and then the implmentatoin
allows you to go back up the levels watching the unit/component spec pass first
and then the integratoin spec pass at the BDD level.

### Lolcommit

![Add welcome message](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_06_emily_coats_74791c0fa7e.gif)

#### Authored By:

Selena Small & Michael Milewski

