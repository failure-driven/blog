---
title: "VI everywhere, what's your superpower"
date: 2018-06-27T20:00:00+10:00
excerpt: '"Once you learn VI bindings, they will be stuck with you for life"
and you will want to use them everywhere! This is an exploration of
all the places you can use them, from the command line, language REPL
to your database console, browser and program input.'
author: Michael Milewski
---

## Abstract

> "Once you learn VI bindings, they will be stuck with you for life"

and you will want to use them everywhere! This is an exploration of
all the places you can use them, from the command line, language REPL
to your database console, browser and program input, even ways of
adding them to places they don't exist. Even if VI has always been
on your TODO list, some tips on how to get started in learning VI
bindings from someone who is pragmatic and does NOT use VIM as their
editor, just VI bindings in every place you would least expect.

## The Ruby version

This presentation at [June Ruby Melbourne
meetup](https://www.meetup.com/Ruby-On-Rails-Oceania-Melbourne/events/mcrjmnyxjbkc/)
was given with a bit of a ruby spin. Talk can be watched here

{{< youtube l6dwu6cCfkM >}}

<br />
## Key takeaways

* by default you are using `EMACS` bindings on your command line
  {{< highlight bash "hl_lines=3" >}}
set -o | egrep -e 'emacs|vi '

emacs          	on
vi             	off
{{< / highlight >}}

* you can turn `VI` bindings on with the following command
  {{< highlight bash "hl_lines=1 6" >}}
set -o vi

set -o | egrep -e 'emacs|vi '

emacs          	off
vi             	on
{{< / highlight >}}

* you can now use all the handy VI bindings like the following
  {{< highlight bash >}}
w        # jump a word
5w       # jump 5 words
d2w      # delete 2 words
$        # jump to end of line (like regex)
^        # jump to beginning of line (like regex)
ct;      # change to `;` character
u        # undo
y$       # yank (copy) to end of line
p        # paste what you have yanked
h j k l  # h - left, j - down, k - up, l - right
{{< / highlight >}}

* How to learn VI bindings? come up with a script like above and just rote
  learn it. Then when someone teaches you a new binding, come up with a script
  and learn to use it too. It only takes 5 minutes a day of practice for about
  a week
  [#7DayCodeChallenge](https://twitter.com/hashtag/7DayCodeChallenge?f=tweets&src=hash)
  and you will have it in muscle memory.

**Script for below console demo**

  * Jump `5w` 5 words forward,
  * `$` jump to the end of the line,
  * `^` jump to the beginning of the line,
  * `d5w` to delete 5 words,
  * `P` to paste at the cursor,
  * `p` to paste multiple times after the cursor,
  * `u` to undo multiple paste commands.

![VI binding practice](/images/vi-everywhere/vi_binding_practice.gif)

* So can I use this for the input of my program?

    > `Ruby`

    {{< highlight bash >}}
ruby -e '
require "readline"
while line = Readline.readline("> ", true)
  p line
end'
{{< / highlight >}}

    > `Python`

    {{< highlight bash >}}
python3 -c '
import readline
while True:
  line = input(":")
  if line == "stop":
    break
  print("%s" % line)'
{{< / highlight >}}

**Script for below console demo**

  * Using `y W` to yank (copy) a word,
  * then `P` to paste it at the cursor
  * and `p` to paste it after the cursor
  * and finally `u` to undo one of the pastes.

![python readline](/images/vi-everywhere/python_readline.gif)

* Hey I am using a programming language REPL (Read-Execute-Print Loop) or a DB
  console and I want VI bindings too!

    {{< tweet user="saramic" id="332354236996272129" >}}

    {{< highlight bash >}}
# ~/.editrc
bind -v
{{< / highlight >}}

* But I am on someone elses machine, or on a server in production and don't
  want to set that up!

    > Sure just hit

    > `<ESC> <ENTER> <ESC> <ENTER>`

    > and magically VI bindings will be there

* What else is there?
  {{< highlight bash >}}
/        # to go into search mode
v        # to take your command line straight into a full VI editor, when you
         # exit the command runs
{{< / highlight >}}

**Script for below console demo**

  * `⎋ ` (⎋ = ESC) `ESC` to go out of _insert_ mode and go into _normal_ mode
  * `/` to search,
  * `/dev` to search for last command in history with text `dev`
  * `↩ ` (↩ = ENTER) `ENTER` to run command
  * `v` to open VI on the command
  * `$` to jump to end of line
  * `B` to jump back a word
  * `10~` to swap case of next 10 characters (upcase)
  * `:x↩ ` to quit VI and execute the command

![Search and VI command line](/images/vi-everywhere/search_and_vi_command_line.gif)

* I am using `mongo` or `elxir` or `node` which don't use readline so I can't
  get VI bindings 😢

    > Use rlwrap - https://github.com/hanslub42/rlwrap

    {{< highlight bash >}}
brew install rlwrap

rlwrap --always-readline mongo
rlwrap --always-readline node
rlwrap --always-readline iex
{{< / highlight >}}

* hey what are you using to show which keys are being used?

    > Keycaster https://github.com/keycastr/keycastr

    {{< highlight bash >}}
brew cask install keycastr

^ ⌥ ⌘ k    # to toggle it on/off
{{< / highlight >}}

## In the future

I am hoping to give this talk with a python flavour at the upcoming [Melbourne Python Meetup in
Melbourne - Monday 4th March](https://www.meetup.com/Melbourne-Python-Meetup-Group/events/mtbwgqyzfbgb/)

- [slides on GitHub](https://github.com/saramic/vi-on-the-command-line)
- [slides](https://saramic.github.io/vi-on-the-command-line/)

#### Authored By:

Michael Milewski

