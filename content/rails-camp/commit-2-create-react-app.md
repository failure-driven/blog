---
title: "Create React App"
date: 2018-12-10T15:00:00+11:00
excerpt: "Although there seems to not be too much in creating a new react app,
  simply typing `npx create-react-app new-app` and firing up the react demo app
  with `npm start` there is actually a whole lot going on here!"
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_02_kirsten_comandich_de721fedc80.gif'
images:
 - '/images/rails-camp/commit_02_kirsten_comandich_de721fedc80_still.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski
---

<img alt="@kcomandich" src="//github.com/kcomandich.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />

Commit [79170f2](https://github.com/failure-driven/railscamp-search-term/commit/79170f2d4b9f4051f7086a23f14282734c163b24)

{{< highlight bash >}}
Author: Kirsten Comandich <kcomandich@users.noreply.github.com>
Date:   Sat Nov 24 12:53:05 2018 +1100

Created React client

Used npx create-react-app client

Co-authored-by: Selena Small <SelenaSmall@users.noreply.github.com>
Co-authored-by: Michael Milewski <saramic@users.noreply.github.com>
{{< / highlight >}}

[all contributors](https://github.com/failure-driven/railscamp-search-term/graphs/contributors)

Although there seems to not be too much in creating a new react app, simply typing

{{< highlight bash >}}
$ npx create-react-app client
{{< / highlight >}}

or if planning to use npm

{{< highlight bash >}}
$ npx create-react-app client --use-npm
{{< / highlight >}}

which generates everything in a directory called client, to be able to simply fire up the react demo app with

{{< highlight bash >}}
$ cd client
$ npm start
{{< / highlight >}}

there is actually a whole lot going on here! Especially for someone like Kirsten, who'd never generated a new react app.
Since this was something new for her, we got her to create her first component.

{{< highlight html >}}
<div className="heading">
  <h1>Welcome</h1>
</div>
{{< / highlight >}}

At which stage she thought

> "Easy! It's just HTML."

Well not exactly, it’s actually JSX where the tags are transpiled down to `React.createElement` functions. Reading this,
you might be wondering wtf that means. Basically, browsers don't understand JSX code. It actually needs to be transpiled
down in to regular JS. Which might lead you on to another question:

Why do we even use JSX then?

JSX is a lot simpler to read and write, for example the following JS code is exactly the same as the JSX code above.

{{< highlight javascript >}}
React.createElement(
    'div',
    {className: "heading"},
    React.createElement(
        'h1',
        null,
        "Welcome"
    )
)
{{< / highlight >}}

As you can see, the `createElement` function takes three positional parameters: `type`, `props`, `children`

But when you're in unfamiliar territory, that can be a little bit too much to get your head around so we thought we
would get Kirsten to write it out herself.

Over the years we have found this the best way to ease new developers into quickly grasping that JSX is not HTML and
through example, realise that the syntax is more expressive than keeping within the pure javascript language. It is a
quick example that converts new developers to JSX from

> “mixing in HTML/JSX seems so ugly and wrong”

to

> “Oh that makes so much sense and is so much easier to read and understand”

After a short explanation and an "aha" moment or two, we then helped Kirsten to modify her new component and extract
a smaller sub component.

{{< highlight javascript >}}
const Heading = (props) => (
    <h1>{props.text}</h1>
)

<div className="heading">
    <Heading text="Welcome" />
</div>
{{< / highlight >}}

or by destructuring the props

{{< highlight javascript >}}
const Heading = ( { text } ) => (
    <h1>{text}</h1>
)
{{< / highlight >}}

so in all your `src/App.js` file would look like

{{< highlight javascript >}}
import React, { Component } from 'react';

const Heading = ({text}) => (
    <h1>{text}</h1>
)

class App extends Component {
    render() {
        return (
            <div className="heading">
                <Heading text="Welcome" />
            </div>
        )
    }
}
{{< / highlight >}}

### What did we learn?

**Michael:** "Try `npx`"

**Selena:** "Don't you mean `npn`?"

**Michael:** "I think `npx` is a thing?"

**Kirsten:** "I have no idea"

**Michael:** "We can find out by running `man npx`"

Given the pace our industry moves, it is an important skill to learn and impart on others that if you don’t know
something, there will be a relatively straight forward way to search for an answer through help or other manuals.

Teaching people to teach themselves is very scalable.

And we discovered that `npx` is a thing and by default, npx will check whether <command> exists in $PATH, or in the
local project binaries, and execute that. *[ref](https://www.npmjs.com/package/npx)

### 5 minutes with Kirsten

**Q:** How did you find the pairing, Kirsten?

**A:** It was nice to have a person or two to bounce ideas off

**Q:** Have you ever done anything like this? any other learning activities?

**A:** Not like this but I have done a [Rails Girls](http://railsgirls.com/)
before. Rails Girls is awesome. I also ran a beginner ruby meetup a while back,
I think it was 6 years ago. I used to run the [Portland Ruby
group](https://pdxruby.org/) back then and we had a beginner meetup too. We
would go through some code and debug it along the way collaboratively with
everyone, not getting it to work and then figuring out the problem. This turned
out to be a good way to show that development is often like that.

**Q:** And what do you think drives us developers to help other developers?

**A:** Lots of things, being part of something, feeling involved, giving back
to a group that I’ve gotten a lot out of. For me it was good to have something
to work on with other developers, since I had been freelancing for a while.
And also a friend of mine didn’t think I could do it, so I had to prove him
wrong! 😂 I used to be super quiet in meetings, so he didn’t know if I
could get up in front of everyone, I showed him! These things give you
confidence and help you inspire others.

**Selena:** Cool, thanks again for your time and thanks for sharing

**Kirsten:** Thank you!

### lolcommit

Oh and yes the camera was rolling to capture the commit.

![initial commit](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_02_kirsten_comandich_de721fedc80.gif)

### More information

* probably the easiest way to get setup coding in React with https://facebook.github.io/create-react-app/
* Portland Ruby Brigade have regular [Meetups](https://www.meetup.com/Portland-Ruby-Brigade/)
* On teaching coding by reading code there was a great presentation at Bath
  Ruby 2015 by Saron Yitbarek [Learning Code
  Good](https://youtu.be/-nsnAYRqYLA) promoting https://www.codenewbie.org/

#### Authored By:

Selena Small & Michael Milewski

