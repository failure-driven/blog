---
title: "Is snapshot testing test driven?"
date: 2019-01-31T08:00:00+11:00
excerpt: 'In our endeavour to pair with everyone as part of our test driven
"The Rails Camp Project" our next hurdle as Rails developers was to navigate
the always changing ReactJS landscape and make use of snapshot testing, but how
is snapshot testing even test driven?'
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_06_emily_coats_74791c0fa7e.gif'
images:
 - '/images/rails-camp/commit_06_emily_coats_74791c0fa7e_still.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski
---

In our endeavour to pair with everyone as part of ["The Rails Camp Project"]({{<
ref "/post/railscamp-pairing" >}}), at Rails Camp Hobart, our next pair was
Emily. The aim of the project was to test drive a simple multi round game using
a Rails backend and ReactJS. Emily was the lucky one to write the first line of
actual code making the [test written by Matt Patterson]({{< ref
"/rails-camp/commit-04-and-05-first-line-of-code-in-rails-app" >}}) pass. The
only hurdle for us Rails developers was to navigate the always changing ReactJS
landscape and make use of snapshot testing, but how is snapshot testing even
test driven?

Now, we've written an integration test that incorporates the backend logic as
well as the front end behaviour. You might be wondering if the test we wrote
with rspec is going to also cover the javascript and markup. Well, it is. But
we're also going to need to start adding some isolated unit tests for the
frontend at some point.

You see, integration tests test that all components work together as expected
but we also need to ensure that each isolated unit works on its own as expected
too.

First, we got Emily to help us setup [Enzyme](https://airbnb.io/enzyme/)
testing and in a rush to try new things we added snapshot tests. As Enzyme
Snapshot tests were the cool new thing people talked about we presumed this
would be a good way to test the React component of our game. Emily changed the
app entry which we created in [commit 02 create-react-app]({{< ref
"/rails-camp/commit-02-create-react-app" >}}) to what was expected in our first
integration test, a H1 with "Welcome to the game".

> **The below animation shows that with snapshot testing you update your
> implementation to get a failure in the tests. This is the wrong way around
> for test driven development. Snapshots are not test driven and should not be
> used to drive out functionality but are ok for a verification of the general
> structure and styling of a component if done together with a visual check in
> the browser and a good set of integration tests.**

![snapshot testing](/images/rails-camp/commit_06_snapshot_testing.gif)

At this time this was not really "test driven". We wrote the implementation and
then just accepted what was provided by the Enzyme snapshot with a press of `u`
for update the snapshot. on various discussions in the past we have heard
eveything from:

> "snapshot test everything, it is the new way of testing, we test 95% of our
> app that way"

to

> "well you could edit the snapshot to make it fail and then update the
> implementation to make it pass"

So as we write this article a few months later what is our view on Enzyme and
snapshot testing?

## Our current rules on Enzyme testing

* use shallow rendering for most unit level assertions
{{< highlight react >}}
it("renders welcome message", () => {
  const wrapper = shallow(<App />);
  expect(wrapper.childAt(0).type()).toBe("h1");
  expect(wrapper.childAt(0).text()).toBe("Welcome to the game");
});
{{< / highlight >}}
* use full DOM rendering sparingly, using `mount()` is no longer doing isolated
  unit testing of componenets. It can be handy when testing components that
  come from a third party and what goes on inside the component is not the
  concern of our tests, like when we use react router in a few posts time.
{{< highlight react >}}
const wrapper = mount(
  <MemoryRouter>
    <App/>
  </MemoryRouter>
);
{{< / highlight >}}
* use snapshot testing as a once off for a component as more of a "pseudo
  visual" confirmation that should be actually reviewed in the browser before
  pressing `u` to update the snapshot, more of a CSS style test.
{{< highlight react >}}
const wrapper = shallow(<App />);
expect(shallowToJson(wrapper)).toMatchSnapshot();
{{< / highlight >}}
* And don't get over excited like we did and attempt to use snapshot testing
  for everything

# Tracking to pair with everyone at rails camp

With a lot of work already cut out for us, trying to share context with 36
developers, one at a time in just 48 hours - many of whom are new to, or
unpracticed at TDD - we were thankful for our background in pair programming.

Our ability to navigate and pre-empt our new pairing budies as each new pair
approached the keyboard meant that _they_ could get stuck in quicker.

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

Emily is a [vue.js](https://vuejs.org/) developer and this was her first
experience with snapshot testing. To be honest, we have only been playing with
it for a short while and are still debating as to how usefull it actually is.

The way it works is, the test takes a snapshot of the shallow rendered React
component under test. What this means is that only that component is rendered
and only the props that would be passed to further components down the render
tree are rendered and not the actual components. This means if an element
changes or state causes a change in the rendering of the component, then the
snapshot changes when test are run again. You can then verify the changes are
what you expected, post implementing the actual change, so not driving them
through the tests.

The problem, however, is that very quickly huge swaths of HTML like snapshots
are being generated which can become a nightmare as you try to find the diffs.
As you can imagine, developers who are in a rush or don't know any better, are
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

### Lolcommit

![Add welcome message](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_06_emily_coats_74791c0fa7e.gif)

### Next time

Now that we have implemented a spec through the integration layer down to the
component unit testing layer and made it pass, it will be time to rinse and
repeat next time. Another failing test, but what if you cannot make it pass but
still want to integrate your code with the rest of the team and not break
continuous integration CI tests? join us next time to find out.

#### Authored By:

Selena Small & Michael Milewski

