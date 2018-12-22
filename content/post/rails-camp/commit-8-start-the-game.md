---
title: "Commit 8 Start the Game"
date: 2019-01-09T09:30:00+11:00
excerpt: ""
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_08_rob_jacoby_5f2f45c6243.gif'
images:
 - '/images/rails-camp/commit_08_rob_jacoby_db0eb0f8b2e_still.jpg'
 - '/images/failure-driven_square.jpg'
draft: true
---

Rob Jacoby joined us to bring in the first frontend component assertion in
ReactJS as part of our code with everyone at [rails camp Hobart]({{< ref
"/post/railscamp-pairing" >}}) project. In the last episode Brenton had to push
a [pending commit]({{< ref "/post/rails-camp/commit-7-pending-specs" >}}) due
to iminent risk of fire. Fortunately it was a false alarm so we managed to
bring Rob upto date with our code base and testing approach and gave him an
opportunity to write some react.

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

In contrast to snapshot testing, we used the shallow render of the component to
test against. In this case checking that a button exists, as it is the first
and only button we need we can opt to just find a button, any button for the
time being.

{{< highlight react "hl_lines=4" >}}
it('renders a button', () => {
  const wrapper = shallow(<App />);
  const button = <button>Start Game</button>;
  expect(wrapper.contains(button)).toEqual(true);
}); 
{{< / highlight >}}

and the button to implement what the test asks for

{{< highlight react >}}
<button>
  Start Game
</button>
{{< / highlight >}}

again we are taking small steps here. Obviously bringing new people onto the
project and up to speed with the technology requires the ability to bring it to
a level where everyone is comfortable. In our case the newest member of the
team, Rob in this case, is the designated "junior" of the code base. In pairing
you want to encourage the "junior" to drive as much as possible, "junior dev
hands on the keboard". Obviously "junior" is in respect to the context of the
task at hand. Getting anyeone to write a their first bit of Test Driven React
is challenging but we managed.

### 5 minutes with Rob

> **Selena** "Rob have you written any React recently? what does your job
> involve these days?"

> **Rob** "Not really, I am mostly a reviewer these days, more so than a coder.
> I have also been more involved in writing backbone of applications, core
> architectural parts and have not really done much feature work"

> **Selena** "You seemed a little surprised that we would be coding directly on
> master, how do you usually work?"

> **Rob** "We work with traditional feature branches and pass work over to QA
> (Quality Assurance) for further testing. That said I am really interested
> with the XP (Extreme Programming) work like you guys have shown me today. I
> have had some great takeaways"

> **Selena** "how did you find the pairing experience with us?"

> **Rob** "The facade API you two have provided is that you are nice people!"

> **Selena** "yeah the backend is a mess"

### Lolcommits

<div style="display: flex;">
  <img alt="test lolcommit 1" src="https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_08_rob_jacoby__test_1_db0eb0f8b2e.gif" />
  <img alt="test lolcommit 2" src="https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_08_rob_jacoby__test_2_441db8c1dee.gif" />
</div>

Finally with practic we had another go

> **Rob** "I like how the gif has worked out, well centered"

![commit with Rob](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_08_rob_jacoby_5f2f45c6243.gif)

#### Authored By:

Selena Small & Michael Milewski

