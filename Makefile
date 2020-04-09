#
# tobeva/Makefile
#
.PHONY: serve build deploy

serve:
	hugo serve -D

build:
	hugo --destination ../root

deploy:
	hugo --destination ../root
	rsync -avhz ../root/ ${TOBEVA_RSYNC_DEST}
