---
title: "Commit 7 Pending Specs"
date: 2019-01-07T09:30:00+11:00
excerpt: ""
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_07_brenton_annan_76caa230579.gif'
images:
 - '/images/rails-camp/commit_07_brenton_annan_76caa230579_still.jpg'
 - '/images/failure-driven_square.jpg'
draft: true
---

Brenton Annan, The Brenton, was our next pair in our endeavour to
pair with everyone at [rails camp Hobart]({{< ref
"/post/railscamp-pairing" >}}). Brenton was playing pool when we
approached him. A huge guy but the nices and friendlies character.
He was happy to join us for a commit on our joint RailsCamp code
base.

<img alt="@brentonannan" src="//github.com/brentonannan.png" style="display: inline; width: 88px;" height="88" />
<img alt="@saramic" src="//github.com/saramic.png" style="display: inline; width: 88px;" height="88" />
<img alt="@SelenaSmall" src="//github.com/SelenaSmall.png" style="display: inline; width: 88px;" height="88" />

Commit [44b8532](https://github.com/failure-driven/railscamp-search-term/commit/44b853282c57cda6ecc2046f978dc86d199a7271)

{{< highlight bash >}}
Author: Brenton Annan <brentonannan@users.noreply.github.com>
Date:   Sat Nov 24 17:47:48 2018 +1100

[WIP] testing a button of the game page

Co-authored-by: Michael Milewski <saramic@gmail.com>
Co-authored-by: Selena Small <selenawiththetattoo@gmail.com>
{{< / highlight >}}

After intorducing Brenton to the codebase and our testing approach you could
see he was all strapped in and keen to get some coding done. Unfortunately for
him we still had almost 30 develoeprs to pair with and time was running out. As
he wrote the test for clicking a start game button that was not there we needed
to see how small a step in testing he could take.

In our best fire alarm tones we started to Whoop, Whoop, Whoop in his year and
announce that a fire has been detected and evacuation is imminent.

> **Selena** "What are you going to do Brenton? you have a failing test and this place is about to go up in flames"

> **Brenton** "leave the builing?"

> **Selena** "but the code, you can't just leave it uncommitted here on this
> machine? You need to commit and push! always be integrating your code with
> the rest of the team! You are working on master because we trust you that
> way, we are pairing, everything is test driven, you need to commit and push
> but that would break the build!"

> **Selena** "You have a failing spec and a fire you need to commit and get out
> of here! You need to set the test to pending and push to master"

Pending is a state in RSpec that informs the test suite that somewhere after
the `pending` line there should be a failure. In fact if there is not failure
the spec will fail as there is no failure which was expected.

This is exactly what you should do if there is a fire alarm and you need to
leave the building or it is time to go for lunch or just warp up for the day.
Set you tests to pending and push to master.

{{< highlight ruby "hl_lines=5-6" >}}
scenario 'Visiting the game' do
  visit '/'
  expect(page).to have_content 'Welcome to the Game'

  pending "there is a fire in the building and we have to leave."
  page.find('button').click
end
{{< / highlight >}}

### 5 minutes with Brenton

> **Selena** "what was your goal for this weekend?"

> **Breton** "I wanted to a proposal for Elixir Conf"

> **Selena** "and how did you find the experience"

> **Breton** "It was certainly intersting. Rather then pushing so early I would
> usually creae a number of local WIP (Work In Progress) commits and only when
> the feature was finished would I clean up the commits retrospectively in git
> with an interactive rebase and force push, but certainly not onto master"

> **Breton** "overall the experience was fun. I got a window into the way you
> approach someone you don't know do you want to pair with. You guys are really
> approachable so that made it easy. It was also easy to ask you about the
> tools you use and how to get stuff done on your computer. There was no
> assumptions and I got to drive the whole experience. It was great."

> **Breton** "you were also very considerate about explaining and guiding me
> through the VIM bindings as part of the git commit message, you have treated
> me extremely well."

> **Breton** "I do not thing I would want to work with capybara and the BDD TDD
> layers of tests although your process sounds interesting"

### Lolcommit

![commit with The Brenton](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_07_brenton_annan_76caa230579.gif)

### Why The Brenton?

Why? because this is The Brenton highlighted by his colleage at Culture Amp for
exemplifying one of the company's values, _Courage to be vulnerable_

{{< youtube Yp0LdUg8ozc >}}

#### Authored By:

Selena Small & Michael Milewski

