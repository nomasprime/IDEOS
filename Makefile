mode := destination
force := false

PILLAR_PAIRS :=

ifdef mode
	PILLAR_PAIRS += 'mode':'$(mode)',
endif

ifdef force
	PILLAR_PAIRS += 'force':'$(force)',
endif

PILLAR_PAIRS += 'pwd':'${CURDIR}'

configure:
	salt-call --state-output=mixed state.apply pillar="{$(PILLAR_PAIRS) }"

bootstrap:
	bin/bootstrap

.PHONY: configure bootstrap
