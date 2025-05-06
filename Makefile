# NOTE: make help uses a special comment format to group targets.
# If you'd like your target to show up use the following:
#
# my_target: ##@category_name sample description for my_target

default: help

.PHONY: prerequisites install poetry-install help

prerequisites: ##@repo Installs needed prerequisites and software to develop in the SRE space
	$(info ********** Installing SRE Repo Prerequisites **********)
	@bash scripts/brew.sh

install: ##@repo Installs needed prerequisites and software to develop in the SRE space
	$(info ********** Installing SRE Repo Prerequisites **********)
	@bash scripts/brew.sh
	@brew bundle --force
	@pipx ensurepath
	@bash scripts/install.sh -a
	@bash scripts/install.sh -p
	@asdf reshim

############# Development Section #############
help: ##@misc Show this help.
	@echo $(MAKEFILE_LIST)
	@perl -e '$(HELP_FUNC)' $(MAKEFILE_LIST)

# helper function for printing target annotations
# ripped from https://gist.github.com/prwhite/8168133
HELP_FUNC = \
	%help; \
	while(<>) { \
		if(/^([a-z0-9_-]+):.*\#\#(?:@(\w+))?\s(.*)$$/) { \
			push(@{$$help{$$2}}, [$$1, $$3]); \
		} \
	}; \
	print "usage: make [target]\n\n"; \
	for ( sort keys %help ) { \
		print "$$_:\n"; \
		printf("  %-20s %s\n", $$_->[0], $$_->[1]) for @{$$help{$$_}}; \
		print "\n"; \
	}
