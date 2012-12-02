include MANIFEST

TARGETS=$(dotfiles:%=$(HOME)/.%)
CWD=$(shell pwd)
OSCONF=$(CWD)/osx


$(HOME)/.%: %
	@if [ -e $@ ]; then echo "Remove $@ before proceeding"; false; fi
	@echo "Installing $<"
	@ln -sf $(CWD)/$< $@

install: $(TARGETS)
	git submodule update --init

uninstall:
	rm -f $(TARGETS)

update:
	git pull
	git submodule sync
	git submodule update --init

ohmyzsh:
	@if [ -d $(HOME)/.oh-my-zsh ]; then \
		ln -sf $(CWD)/zsh/* $(HOME)/.oh-my-zsh/custom ;\
	fi

system:
	@echo "operating system level configuration"
	@if [ -e $(OSCONF) ]; then $(OSCONF); fi;

packages:
	@echo "package manager level configuration"
	@if [ -e /usr/local/bin/brew ]; then \
			brew update upgrade; \
			brew tap $(taps); \
			brew install $(packages); \
	else \
			ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"; \
			brew update upgrade; \
			brew tap $(taps); \
			brew install $(packages); \
			brew cleanup; \
	fi

.PHONY: install uninstall update packages system ohmyzsh
