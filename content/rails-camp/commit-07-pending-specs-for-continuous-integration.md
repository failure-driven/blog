---
title: "Pending Specs for Continuous Integration"
date: 2019-02-01T08:00:00+11:00
excerpt: "Happy to join us for a commit on our mission to pair with everyone as
part of \"The Rails Camp Project\", at Rails Camp Hobart, we were excited to be
coding next with Brenton! Highlighted by his colleage at Culture Amp for
exemplifying one of the company's values, Courage to be vulnerable, but did he
have the courage to do trunk based development committing straight to master?"
cover_padding_class: 'pv7-l'
cover_dimming_class: 'none'
featured_image: 'http://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_07_brenton_annan_76caa230579.gif'
images:
 - '/images/rails-camp/commit_07_brenton_annan_76caa230579_still.jpg'
 - '/images/failure-driven_square.jpg'
author: Selena Small & Michael Milewski
---

Happy to join us for a commit on our mission to pair with everyone as part of
["The Rails Camp Project"]({{< ref "/post/railscamp-pairing" >}}), at Rails
Camp Hobart, we were excited to be coding next with Brenton!  Highlighted by
his colleage at Culture Amp for exemplifying one of the company's values,
_Courage to be vulnerable_, we'd already heard so much about him. But the
question was, did he have the courage to do trunk based development on Master?

{{< youtube Yp0LdUg8ozc >}}

<br />
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

In our best fire alarm tones we started to Whoop, Whoop, Whoop in his ear and
announce that a fire has been detected and evacuation is imminent.

> **Selena** "What are you going to do Brenton? you have a failing test and
> this place is about to go up in flames"

> **Brenton** "leave the builing?"

> **Selena** "But the code, you can't just leave it uncommitted here on this
> machine? You need to commit and push!

> **Michael** "You have a failing spec and a fire you need to commit and get out
> of here! You need to set the test to pending and push to master"

Pending is a state in RSpec that informs the test suite that somewhere after
the `pending` line there should be a failure. In fact if there is no failure
the spec will fail as there is no failure which was expected. More info on
pending can be found on the [RSpec project under `pending`
examples](https://relishapp.com/rspec/rspec-core/v/3-8/docs/pending-and-skipped-examples/pending-examples).

Okay, maybe the fire alarm example is a little extreme - if there's a fire
detected, you should definetly leave the building. But if it's time to go for
lunch or to wrap up for the day then this is defintely the approach you should
be taking in [trunk based](https://trunkbaseddevelopment.com/) TDD. Set you
tests to pending and push to master, meaning you are continually integrating
(CI) your code changes with the rest of the team.

As Martin Fowler recently tweeted, Continuous Integration (CI) means you are
pushing your code to master at least daily.

  {{< tweet 1086642940653522944 >}}

and pushing to master is CI by definition

  {{< tweet 1086648144958492673 >}}

{{< highlight ruby "hl_lines=5-6" >}}
scenario 'Visiting the game' do
  visit '/'
  expect(page).to have_content 'Welcome to the Game'

  pending "there is a fire in the building and we have to leave."
  page.find('button').click
end
{{< / highlight >}}

### 5 minutes with Brenton

> **Q:** "What was your goal for this weekend?"

> **A:** "I wanted to write a proposal for Elixir Conf"

> **Q:** "How did you find the pairing/TDD experience?"

> **A:** "It was certainly intersting. Rather then pushing so early I would
> usually create a number of local WIP (Work In Progress) commits and only when
> the feature was finished I would clean up the commits retrospectively in git,
> rebase and force push, but certainly not onto master!"

> "You were also very considerate about explaining and guiding me
> through the VIM bindings as part of the git commit message, you have treated
> me extremely well."

### Other thoughts from Brenton

> "I got a window into the way you approach someone you don't know and you want
> to pair with. You guys are really approachable so that made it easy. It was
> also easy to ask you about the tools you use and how to get stuff done on
> your computer. There was no assumptions and I got to drive the whole
> experience."

> "I do not think I would want to work with capybara and all the layers of
> tests you guys use, although your process sounds interesting"

### Lolcommit

![commit with The Brenton](https://s3-ap-southeast-2.amazonaws.com/failure-driven-blog/railscamp-24-woodfield-hobart/commit_07_brenton_annan_76caa230579.gif)

### Next time

Now that we have driven through a first test in having a welcome message and
have gone to the top of our layered tests to create another feature, a button
that starts the game, we are hoping to get some gains in our development as
everything is setup. That said there are still new features and approaches like
`pending spec` as shown today, and the ongoing challenge of onbaording new
developers into our testing, pairing and CI approach. We hope you join us next
time to see what challenges we face then.

#### Authored By:

Selena Small & Michael Milewski

