---
title: "Tmux All the Dev Things"
date: 2020-03-09T09:00:00+11:00
excerpt: "iTerm2 native window integration and tmux can help run all the various services needed for development with 1 simple startup script but there are a few gotcha's."
featured_image: ""
cover_dimming_class: "bg-black-20"
images:
  - ""
author: Selena Small & Michael Milewski
draft: true
---

<blockquote class="speech-bubble-selena">
<p>
<b>TL;DR</b>
</p>
<p>
iTerm2 native window integration and tmux can help run all the various services needed for development with 1 simple startup script but there are a few gotcha's.
</p>
</blockquote>
<br />
<h2><i><span class="selena">Dev</span> vs <span class="michael">Dev</span> SmackDown</i></h2>

<div>Selena</div>

<blockquote class="speech-bubble-selena">
<p>
Often when running a project in development there are a whole heap of things to get running. Firstly you probably need to be running a database and a server. Quite likely there will be a frontend which will most likely need to bundle your code. Then you may also be running a separate worker process. You may also have other dependent microservices which need to be running. Lastly you may be running a test suite or more in watch mode to run your tests automatcially. This is a lot of things to remember to get up and running and can be a pain to setup.
</p>

<p>
But there is a better way. Why not add a tmux startup script to start them all up in separate windows, and with iterm2's tmux window TODO... integration you wouldn't even know that tmux magic is happening.
</p>
</blockquote>

<div style="text-align:right;">Michael</div>

<blockquote class="speech-bubble-michael">
Magic, precisely, any developer worth their salt would be wanting precise over control of what they are doing.
</blockquote>

<blockquote class="speech-bubble-selena">
Yes sure but with a light weight wrapper you can both easily know what is going on, abstract the starting of services away and save precious developer time and be more productive
</blockquote>

<blockquote class="speech-bubble-michael">
meh let's stop talking foo bars and give me a concrete example
</blockquote>

<blockquote class="speech-bubble-selena">
Sure, why don't we go with a rails 6 example using react compiled by webpack, sidekiq workers, jest for react testing. here is a demo app TODO failure-driven tmux-all-the-dev-things-sample
</blockquote>

<blockquote class="speech-bubble-michael">
excellent should be no time to get running
</blockquote>

<code>
{{< highlight bash >}}
    # in a new terminal
    git clone
    new tab
    rails db:reset ??
    rails server

    # in a new tab
    bin/webpack-dev-server

    # in a new tab
    start redis
    sidekiq

    # in a new tab
    yarn test

{{< / highlight >}}
</code>

<blockquote class="speech-bubble-michael">
boom pretty easy
</blockquote>

<blockquote class="speech-bubble-selena">
well you could just run the make tmux command
</blockquote>

TODO ... animated gif

<blockquote class="speech-bubble-selena">
Now all your things start up automatically in "native" iTerm tabs
</blockquote>

<blockquote class="speech-bubble-michael">
Hmm, not bad, I can navigate between them using `CMD-SHIFT-[` and `]` to move between tabs left and right as well as CMD-1, CMD-2 to jump to a tab directly
</blockquote>

<blockquote class="speech-bubble-selena">
Yep, standard iTerm2 tabs, being tmux you could also background the whole lot and bring it back into focus.
</blockquote>

<blockquote class="speech-bubble-michael">
Hey found a bug, show stopper, stuff you and your tmux.
</blockquote>

<blockquote class="speech-bubble-selena">
Yeah what is it?
</blockquote>

<blockquote class="speech-bubble-michael">
Not much of a fan of iTerm but the big advantage is you can get inline images and click directly on a file to open it in the associated editor of choice, well the `semantic history` function of CMD-Click on file just attempts to open the file like a url in the browser, I give up!
</blockquote>

TODO ... animated gif

<blockquote class="speech-bubble-selena">
I did say this was a high level abstraction so there are a few things going on here and they need to be setup. In this case you need to `install shell integration` and `source` it prior to running tmux in iterm2
</blockquote>

TODO ... how to

<blockquote class="speech-bubble-michael">
Wow now that works awesome, you know I am starting to get used to some of these niceties of iterm2. It is that fine print of inline images and click to open file that are enough to keep me here. Not to mention that I must admit the tmux all the things is also quite handy.
</blockquote>

TODO ... animated gif

<blockquote class="speech-bubble-selena">
Michael, I thing you have just been Smacked Down
</blockquote>
