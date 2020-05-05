#
# tobeva/Makefile
#
.PHONY: serve build deploy

serve:
	hugo serve -D

build:
	hugo --destination ../root --cleanDestinationDir

deploy:
	hugo --destination ../root --cleanDestinationDir
	rsync -avhz ../root/ ${TOBEVA_RSYNC_DEST} --delete

