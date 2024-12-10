.DEFAULT_GOAL := usage

# user and repo
USER        = $$(whoami)
CURRENT_DIR = $(notdir $(shell pwd))

# terminal colours
RED     = \033[0;31m
GREEN   = \033[0;32m
YELLOW  = \033[0;33m
NC      = \033[0m

.PHONY: install
install:
	brew bundle

.PHONY: run
run:
	hugo --watch server --buildFuture --buildDrafts

.PHONY: run-new-theme
run-new-theme:
	sed -i .old 's/ananke/hugo-theme-failure-driven/' config.toml
	hugo --watch server --buildFuture --buildDrafts --themesDir=..

.PHONY: run-new-theme-no-layout
run-new-theme-no-layout:
	sed -i .old 's/ananke/hugo-theme-failure-driven/' config.toml
	rm -rf layouts
	hugo --watch server --buildFuture --buildDrafts --themesDir=..

.PHONY: usage
usage:
	@echo
	@echo "Hi ${GREEN}${USER}!${NC} Welcome to ${RED}${CURRENT_DIR}${NC}"
	@echo
	@echo "${YELLOW}make install${NC}                 install dependencies"
	@echo
	@echo "${YELLOW}make run${NC}                     run site"
	@echo "${YELLOW}make run-new-theme${NC}           run site with new theme"
	@echo "${YELLOW}make run-new-theme-no-layout${NC} rm layouts and run new themes"
	@echo
