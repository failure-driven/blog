---
title: "Start the Game with React"
date: 2019-02-05T08:00:00+11:00
excerpt: "Happy to join us for a commit on our mission to pari with everyone as
part of \"The Rails Camp Project\", at Rails Camp Hobart, was Rob Jacoby. Rob
would write a ReactJS component to start the game and start his exeprience with
ReactJS."
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_08_rob_jacoby_5f2f45c6243.gif'
images:
 - '/images/rails-camp/commit_08_rob_jacoby_db0eb0f8b2e_still.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski
---

Happy to join us for a commit on our mission to pair with everyone as part
of ["The Rails Camp Project"]({{< ref "/post/railscamp-pairing" >}}), at
Rails Camp Hobart, was Rob Jacoby.

In our last commit Brenton showed how to push a [pending commit]({{< ref
"/rails-camp/commit-07-pending-specs-for-continuous-integration" >}}) that
would be allowed to, on purpose, _not pass_ on a CI test server. This approach of
pending specs allows to push regularily to master and hence real continuous
integration (CI). Rob would write a ReactJS component to start the game and
start his experiences in writing his first React code.

Quickly bringing Rob up to speed with our code base and testing approach, we
gave him an opportunity to write some react.

<img alt="@robjacoby" src="//github.com/robjacoby.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />

Commit [dde6ff8](https://github.com/failure-driven/railscamp-search-term/commit/dde6ff8949ff6c6e40f1fa9c92465127534c1dd7)

{{< highlight bash >}}
Author: Rob Jacoby <robjacoby@users.noreply.github.com>
Date:   Sat Nov 24 18:10:14 2018 +1100

Add a button to start game

Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
Co-authored-by: Michael Milewski <saramic@gmail.com>
{{< / highlight >}}

Since it's still early days in building this project, we don't
have any complexity yet or any components for that matter.
Brenton's test is looking for a button on the page, any button,
and to get this test passing for the time being all we need to do
is add a button.

{{< highlight react "hl_lines=4" >}}
it('renders a button', () => {
  const wrapper = shallow(<App />);
  const button = <button>Start Game</button>;
  expect(wrapper.contains(button)).toEqual(true);
});
{{< / highlight >}}

and for the button to contain the text "Start Game", like what
the test asks for.

{{< highlight react >}}
<button>
  Start Game
</button>
{{< / highlight >}}

We took an extremely small step here but the reality is that
building out new features can sometimes feel like a series of
unbeleivably small steps - especially when you're not quite sure
where you're going yet.

In respect to the context of the task at hand, someone is
always going to be less knowledgable and may even be refered to
at times as the "junior" in that particular situation.

For this commit, Rob is the designated "junior" and in a good
pairing environment, you want to encourage the "junior" to drive
as much as possible. Since we're not so far beyond "junior"
ourselves in test driving React, getting anyone else to write
their first bit of Test Driven React is certainly a challenge but
we managed in the end!

### 5 minutes with Rob

> **Q:** Rob have you written any React recently? what does your job
> involve these days?

> **A:** Not really, I am mostly a reviewer these days, more so than a coder.
> I have also been more involved in writing the backbone of applications, core
> architectural parts and haven't really done much feature work.

> **Q:** You seemed a little surprised that we would be coding directly on
> master, how do you usually work?

> **A:** We work with traditional feature branches and pass work over to QA
> (Quality Assurance) for further testing. Although I am really interested
> with the XP (Extreme Programming) work like you guys have shown me today

> **Q:** How did you find the pairing experience with us?

> **A:** The facade API you two have provided is that you are nice people!

### Lolcommits

<div style="display: flex;">
  <img alt="test lolcommit 1" src="https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_08_rob_jacoby__test_1_db0eb0f8b2e.gif" />
  <img alt="test lolcommit 2" src="https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_08_rob_jacoby__test_2_441db8c1dee.gif" />
</div>

Finally with practic we had another go

> **Rob** "I like how the gif has worked out, well centered"

![commit with Rob](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_08_rob_jacoby_5f2f45c6243.gif)

### Next time

We were starting to run out of simple dumb test implementation of text and
buttons. A few more tests to setup up and very shortly we would need to get into
some real functionality where those buttons actually start to make actions for
rounds in our game. We hope you can join us next time.

#### Authored By:

Selena Small & Michael Milewski

