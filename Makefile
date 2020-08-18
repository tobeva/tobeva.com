#
# tobeva/Makefile
#
.PHONY: serve build deploy

serve:
	hugo serve -D

build:
	hugo --destination ../tobeva-root --cleanDestinationDir

deploy:
	hugo --destination ../tobeva-root --cleanDestinationDir
	rsync -avhz ../tobeva-root/ ${TOBEVA_RSYNC_DEST} --delete

