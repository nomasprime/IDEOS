install:
	salt-call --state-output=mixed state.apply

saltstack:
	bin/saltstack

.PHONY: install saltstack
