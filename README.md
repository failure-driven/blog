# Failure Driven

blog of failures that led to success

available at: https://failure-driven.com

## In progress

```
# add submodule for theme
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke

# if themes/ananke is empty you may need to initialize the submodule
git submodule update --init
```

To run during writing

```
make run
# hugo --watch server --buildFuture --buildDrafts
```

Run with a new in progress theme

```
make run-new-theme
# OR
make run-new-theme-no-layout
# hugo --watch server --buildFuture --buildDrafts --themesDir=../..
```


TODO:

- [ ] actual content for ReactConfAU
- [ ] actual content for RubyConfAU
- [ ] finish off DevFest Melbourne 2019
- [ ] finish off DDD Melbourne 2019
- [ ] finish off RubyConf USA 2019
- [ ] extract "speaking" overview template to use in other places
- [ ] fix up all the existing "speaking" presentations
- [ ] tmux dev vs. dev SmackDown
- [ ] styling of blog posts
- [ ] clean up the front page
- [ ] flip the header image to Selena & Michael
- [ ] the rest of TheRailsCampProject
