---
title: "Create React App"
date: 2018-12-10T15:00:00+11:00
excerpt: 
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_02_kirsten_comandich_de721fedc80.gif'
images:
draft: true

---

<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />
<img alt="@kcomandich" src="//github.com/kcomandich.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />

    Author: Michael Milewski <sara...@gmail.com>
    Date:   Sat Nov 24 12:53:05 2018 +1100

    Created React client
    
    Used npx create-react-app client
    Co-authored-by: Kirsten Comandich <kcom...@gmail.com>
    Co-authored-by: Selena Small <selena...@gmail.com>


[commit](https://github.com/failure-driven/railscamp-search-term/graphs/contributors)

Although there seems to not be too much in creating a new react app, simply typing

```
$ npx create-react-app client
```

which generates everything in a directory called client, to be able to simply fire up the react demo app with

```
$ npm start
```

there is actually a whole lot going on here! Especially for someone like Kirsten, who'd never generated a new react app. 
Since this was something new for her, we got her to create her first component.

```
<div className=”heading”>
  <h1>Welcome</h1>
</div>
```

At which stage she thought "Easy! It's just HTML."

Well not exactly, it’s actually JSX where the tags are transpiled down to `React.createElement` functions. Reading this,
you might be wondering wtf that means. Basically, browsers don't understand JSX code. It actually needs to be transpiled
down in to regular JS. Which might lead you on to another question:

Why do we even use JSX then?

JSX is a lot simpler to read and write, for example the following JS code is exactly the same as the JSX code above.

```
React.createElement(
    ‘div’,
    {className: “heading”},
    React.createElement(
        ‘h1’,
        Nil,
        “Welcome”
    )
)
```

As you can see, the `createElement` function takes three positional parameters: `type`, `props`, `children`

But when you're in unfamiliar territory, that can be a little bit too much to get your head around so we thought we 
would get Kirsten to write it out herself.

Over the years we have found this the best way to ease new developers into quickly grasping that JSX is not HTML and 
through example realise that the syntax is more expressive than keeping within the pure javascript language. It is a 
quick example that converts new developers to JSX from 

“mixing in HTML/JSX seems so ugly and wrong” 

to 

“Oh that makes so much sense and is so much easier to read and understand”

After a short explanation and an "aha" moment or two, we then helped Kirsten to modify her new component and extract 
a smaller sub component.

```
<div className=”heading”>
  <Heading text=”Welcome”>
</div>

Export const Heading (
  <h1>{props.text}</h1>
)
```

### What did we learn?

Michael: "Try `npx`"

Selena: "Don't you mean `npn`?"

Michael: "I think `npx` is a thing?"

Kirsten: "I have no idea"

Michael: "We can find out by running `man npx`"

Given the pace our industry moves, it is an important skill to learn and impart on others that if you don’t know 
something, there will be a relatively straight forward way to search for an answer through help or other manuals. 

Teaching people to teach themselves is very scalable.

And we discovered that `npx` is a thing and by default, npx will check whether <command> exists in $PATH, or in the 
local project binaries, and execute that. *[ref](https://www.npmjs.com/package/npx)

### 5 minutes with Kirsten

**Q:** How did you find the pairing, Kirsten?

**A:** It was nice to have a person or two to bounce ideas off

### lolcommit

Oh and yes the camera was rolling to capture the commit.

![initial commit](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_02_kirsten_comandich_de721fedc80.gif)

#### Authored By:

Selena Small & Michael Milewski
