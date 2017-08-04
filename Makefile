install:
	salt-call --state-output=mixed state.apply pillar="{'pwd':'${CURDIR}'}"

source:
	salt-call --state-output=mixed state.apply pillar="{'mode':'source','pwd':'${CURDIR}'}"

saltstack:
	bin/saltstack

.PHONY: install saltstack source
