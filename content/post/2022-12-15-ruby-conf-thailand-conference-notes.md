---
draft: true
title: "RubyConfTH conference notes"
date: 2022-12-15T09:00:00+07:00
excerpt: "some notes take during the conference"
featured_image: ""
cover_dimming_class: "bg-black-20"
images:
  - ""
author: Selena Small & Michael Milewski
---

# RubyConfTH

- 2 years in the making since 2019 RubyConfTH

## Day 1 Friday 9th December

- https://rubyconfth.com/schedule/#day-1

> Keynote: A Beginner's Guide to Puma Internals (Slides)
> Nate is a Rails performance expert. He’s the author of several books, and he also maintains the Puma web server project.
> Nate Berkopec @nateberkopec

- OSS - Rails to get best review of  your code
- lazyness - get others to do the work for me
- maintainers - "build an army of nerds"
- most people here have NOT contributed to OSS
- hump for most is they are intimidated
- Overview of project goals and approaches
  - details HTTP & TCP
  - Puma allows Rack Apps to run
  - Puma is the interface between Rack and Socekt data stream
  - Pre-foring - fors child processes
  - The threadpool - is the special sauce of Puma over competitors
  - main thing to allow GVL (Global VM Lock) & wait for I/O
  - Reactor in Ruby 3
  - more throughput for similar memory resources - this is the difference from
    servers like Unicorn - this is the reason to use Puma, if this is your
    usecase use Puma 
  - Unicorn needs buffering as has no reactor and use nginx or apache
  - CLOC - count lines of project
  - use own mini_ssl - originally for performand, plan is to get rid of it,
    still uses OpenSSL under the covers
  - uses parser from Mongrel
  - Ragel parser lib
  - Java/C code in /ext - this is where most OSS help is needed
  - IO.select is used to accept connections on Socket - you can see what it
    does, "it's in the name"
  - `brew intall ragel`, simple to get up and running
  - tags to get started with
    - contrib-wated - great first thing
    - needs-repro - reproducible bug
    - docs - can do "non code contributions"
    - PR review comments on any PR
    - bug-fix
    - finally features
    - Good OSS strategy - [Photo]
  - * wroking with ruby core?? can? Rack speck Sockets
  - Chris Seeaton memorial
    - plain language academic
    - infinite patience
    - mission to make languages fast

> A Rails performance guidebook: from 0 to 1B requests/day
> Cristian is a software engineer in love with Ruby. He has been working with Rails since the release of Rails 3, more than 10 years ago. Currently, he leads performance optimization efforts at Zendesk as a Group Tech Lead.
> Cristian Planas @crplanas
- talk on 

TODO

> Hanami 2: New Framework, New You
> Tim is a core team member of Hanami, dry-rb and rom-rb, and a Principal Engineer at Buildkite. He’s been writing Ruby for over 20 years and still loves it! He works to bring the joy of Ruby to the experience of writing real, maintainable apps of all shapes and sizes.
>Tim Riley @timriley

TODO

> Megaruby - mruby/c on Sega Mega Drive
> Yuji is a software developer based in Adelaide, South Australia. He is originally from Tokyo, Japan. He used to be a Windows desktop application developer until he discovered Ruby.
> Yuji Yokoo @yujiyokoo

TODO

> Roasting the Duck - A talk about Ruby and types
> Paolo Perrotta is the author of “Metaprogramming Ruby” and “Programming Machine Learning”. He's been coding for most of his life, ranging from embedded to enterprise software, computer games, and web apps. He lives in Bologna, Italy.
> Paolo Perrotta @nusco

TODO

> Scaling Ruby with JRuby (Slides)
> Charles works on JRuby and JVM language technologies at Red Hat.
> Charles Oliver Nutter @headius

TODO

> 10x your teamwork through pair programming
> Michael is a developer keen on the people side of things. He loves pairing, and in particular with people new to writing software. He especially likes driving software out with tests and directing the evolution of the design. In his spare time he is busy camping with his 4 kids.
> Michael Milewski @saramic
> Selena is a full-stack lead engineer at Fresho in Melbourne Australia who is particularly passionate about TDD. As a self-taught coder with a background in management, she is well-equipped to mentor others. In her spare time, she is a nak muay ying, a professional kickboxer.
> Selena Small @selenasmall88

That's us

> Why I choose Phoenix
> Elixir developer, former Ruby dev for over a decade. Freelancer, streaming at https://www.twitch.tv/Elixir_Bytes. Podcasting about freelancing for software devs at https://dreamclients.io
> Aaron Cruz @mraaroncruz

TODO

> Keynote: The Ecstatic Organisation
> Siddharth is the CTO of InVideo. He has been a Ruby developer for fifteen years and has also been an investment banker and musician.
> Siddharth Sharma @_svs_

TODO

## Day 2 Saturday 10th December

https://rubyconfth.com/schedule/#day-2

> Keynote: Ruby & JVM: A (JRuby) Love Story
> Yarden is a Software Engineer at Rookout, where you can find her in the office jumping between 6 different programming languages a day. She loves learning about new technology, creating iOS apps and making everything she can automated.
> Yarden Laifenfeld @YardenLaif

TODO

> On making your Rails App more transparent
> Stephan is working as a Software Developer at NEW WORK SE! When not working he's traveling with his family, hiking or sailing.
> Stephan Eberle @stephaneberle

TODO

> GitOps: The Single source of truth
> Audy's background is as a backend developer, then he's focused on SysAdmin/DevOps for the last 8 years. The guy who gets excited when talking about cloud technology and container orchestration!
> Thatthep Vorrasing @amaudy

TODO

> Dealing With A Project's Complexity In A Changing Environment
> Anita is a self-learner who entered the Ruby world in 2013 as a backend developer. Since then, she has started a master’s degree in psychology. Initially a hobby, with time, psychology turned into a valuable experience that helped her transition to a managerial path in IT.
> Anita Jaszewska @anita_jaszewska

TODO

> Dissecting Rails - a different approach to learning Rails
> Ratnadeep (rtdp), is a software craftsman, an entrepreneur and work with Ruby for the past 13 years. He runs a Rails consulting company BetaCraft Technologies. Earlier he was a digital nomad and changed his location every few weeks, coding Ruby and exploring places.
> Ratnadeep Deshmane @rtdp

TODO

> Roda: Simplicity, Reliability, Extensibility, Performance (Slides)
> Jeremy Evans is a Ruby committer who focuses on fixing bugs in Ruby. He the lead developer of the Sequel database library, the Roda web toolkit, the Rodauth authentication framework, and many other Ruby libraries. He is the author of “Polished Ruby Programming”.
> Jeremy Evans @jeremyevans0

TODO

> Processing data: Ruby or SQL? (Slides)
> Nerd, cyclist, and blogger. Jônatas is a pair programming evangelist, Vim editor user and enthusiast.
> Jônatas Paganini @jonatasdp

TODO

> Refactoring for Rails - using deodorant to prevent code smells and a shower from time to time to eliminate the most persistent ones (Slides)
> Rodrigo works with development since 1997, have worked with many languages and platforms before falling in love with Ruby and now has the objective to help developers to use the best tools for each job so they can solve hard problems, with less bugs and have more free time.
> Rodrigo Urubatan Ferreira Jardim @urubatan

TODO

> Keynote: YJIT's Three Languages: the Fun of Code that Writes Code
> Noah spent many years charting exactly how fast Ruby is for various tasks, and continues this work at speed.yjit.org. On the YJIT team, he bothers younger, more vigorous programmers with questions like, “would you say five warmup iterations are enough if we set this parameter?”
> Noah Gibbs @codefolio

TODO

the wrap