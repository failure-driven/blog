---
title: "Commit 19 Refactor React Dumb Component to Class"
date: 2019-02-20T09:30:00+11:00
excerpt: ""
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_19_chris_aitchison_0e4321b3140.gif'
images:
 - '/images/rails-camp/commit_19_chris_aitchison_0e4321b3140_static.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski 
draft: true
---

Chris joined us for a little refactor as part of [rails camp Hobart]({{< ref
"/post/railscamp-pairing" >}}) pairing project. It was time to make a dumb
component in React have a little bit more functionality and we first needed to
change it to a class. It may feel wastefull to change the same piece of code
that was only written a few commits before but this is precisely what iterative
development is. The same iterative development that allows us to switch people
in relatively quickly into this project and measure progress through ongoing
progress rather than a long up front design session. There is room for up front
design in iterative development but it depends on what we try to optimise. In
this case the most important measure was participation so taking  small steps
with code that we can reason about was the best choice.

So the change was

{{< highlight diff >}}
-import React from 'react';
-export default () => (
-  <>
-    <div className='status'></div>
-    <h2>This is round 1</h2>
-  </>
-);
-
+import React, {Component} from 'react';
+
+class Round extends Component {
+  render() {
+    return(
+      <>
+        <div className='status'></div>
+        <h2>This is round 1</h2>
+      </>
+    );
+  }
+}
+
+export default Round;
{{< / highlight >}}

<img alt="@cmaitchison" src="//github.com/cmaitchison.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />

Commit [d0a45a6](https://github.com/failure-driven/railscamp-search-term/commit/d0a45a60a89aa3d9175185c8dda686d02cd577df)

{{< highlight bash >}}
Author: Chris Aitchison <cmaitchison@users.noreply.github.com>
Date:   Sun Nov 25 12:13:49 2018 +1100

Refactor round.js to be a class

Co-authored-by: Michael Milewski <saramic@gmail.com>
Co-authoured-by: Selena Small <selenawiththetattoo@gmail.com>
{{< / highlight >}}

### 5 minutes with Chris

> **Q:** how did you find the experience?

> **A:** to tell you the truth, I didn't realy know what to expect but it was
> fantastic! all my expectations were exceeded.

> **Q:** We saw you were doing some of your own coding this Rails Camp, what were you working on?

> **A:** I was working on getting some stats out of Git and [Build Kite]()
> **TODO build kite link** the Continuous Integration tool to build a dashboard
> for my team back at the real job.

> **Q:** And what is your day job?

> **A:** I am one of the crew from Up banking - we have a whole heap of people
> out here at Rails Camp.

> **Q:** what did you learn?

> **A:** so quick to forget Javascript and React. The syntax is not at my
> finger tips only after a few years. It is hard as Javascript just seems to
> keep changing with new-ish Ecmascript changes, and frameworks, it feels like
> it is changing every day. As for React the syntax is slightly different
> between React native and plain react

> **Q:** in our day job we use Ember, would you try Ember?

> **A:** No, I don't think so but I understand the pain of a choice that has
> been made and how in your job you can not just over turn it overnight.

> **Q:** Do you pair in your day job?

> **A:** No we don't pair, but did when I was at Lonely Planet a few years ago.
> It was intense and exhausting. There was a whole thing of managing
> interactions between introverts vs extorverts. I feel it broke some people. I
> suppose it is a balance. It was intense!

> The approach back them was to have less iMacs then people, you had to pair,
> there was no breathing space. I now find that casually pairing is better on a
> specific problem. I tend to do it sparingly. You have to have good pairing
> etiquette and that can be hard to find.

> You guys are next level though, it seems you can get anyone off the street
> and pair with them, you have good pairing-ness

> **Q:** what is bad "pairing-ness"?

> **A:** I have met all sorts of keyboard hogs, people checking twitter on the
> side, it's no good. Also once people are senior they are stuck in their
> midset of doing it their own way.

> **Q:** and have you had good pairing at work, do you promote pairing?

> **A:** When two seniors work together and get the correct solution, that is
> good pairing. I think a part of the culture of the company I work in at the
> moment is not to pair, we are sort of counter revolutionaary

> **Q:** and what are your views on agile practices?

> **A:** Back in the day agile was iterative delivery, pairing and that sort of
> stuff but still a lot of projects failed to deliver, projects died if they
> couldn't deliver at all. I have seen agile as a management methodology and XP
> (eXtreme Programming) as practices. Over time many consultancies have
> flourished helping implement practices, training scrum masters but it ran
> into a lot of heavy weight processes, with too many meetings, too much time
> spent grooming backlogs etc, but this did not improve everything and
> sometimes delivery suffered. There needs to be a balance.

**TODO** not sure about this last statement - not sure I remember his view correctly?

## Lolcommit

![test lolcommit](http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_19_chris__test_aitchison_ef8416ba250.gif)
![commit 19 Chris Aitchison](http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_19_chris_aitchison_0e4321b3140.gif)

#### Authored By:

Selena Small & Michael Milewski
