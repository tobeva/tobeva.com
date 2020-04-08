#
# tobeva/Makefile
#
.PHONY: serve build

serve:
	hugo serve -D

build:
	hugo --destination ../root

