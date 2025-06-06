MAKEFLAGS += -s --no-print-directory
.DEFAULT_GOAL := help
$(if $(filter Windows_NT,$(OS)),$(if $(shell where printf 2>nul),,$(error coreutils is not installed. Please run: winget install coreutils)))

REPO ?= alanlivio/marp-utils
VERSION ?= v0.1
CSS_FILE := marp-utils.css

.PHONY: help test publish

help:
	@printf "%s\n" \
		"Usage: make [target]" \
		"" \
		"Targets:" \
		"  deps     Verify required CLI tools (git, gh, curl)" \
		"  test     Verify stylesheet and example files exist" \
		"  publish  Publish $(CSS_FILE) ($(VERSION)) to GitHub Releases and jsDelivr"

publish:
	git tag -f $(VERSION)
	git push -f origin $(VERSION)
	-gh release delete $(VERSION) --repo $(REPO) --yes
	gh release create $(VERSION) $(CSS_FILE) --repo $(REPO) --verify-tag --title "$(VERSION)" --notes "$(CSS_FILE) ($(VERSION))"
	-curl -fsSL https://purge.jsdelivr.net/gh/$(REPO)@$(VERSION)/$(CSS_FILE)
