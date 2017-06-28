#!/bin/bash

# Export some ENV variables so you don't have to type anything
export PASSPHRASE={{ passphrase }}
export AWS_ACCESS_KEY_ID={{ aws_access_key }}
export AWS_SECRET_ACCESS_KEY={{ aws_secret_access_key }}


# Your GPG key
GPG_KEY={{ gpg_8_chars_code }}

# The source of your backup
SOURCE=/

# The destination
# Note that the bucket need not exist
# but does need to be unique amongst all
# Amazon S3 users. So, choose wisely.
DEST=s3://s3-{{ aws_region }}.amazonaws.com/{{ bucketname }}/{{ backup_dir }}

duplicity \
    incremental \
    --full-if-older-than 1W \
    --encrypt-key ${GPG_KEY} \
    --sign-key ${GPG_KEY} \
    --include=/opt \
    --exclude=/** \
    ${SOURCE} ${DEST}
    #--include=/root \
    #--include=/srv \
    #--volsize 250 \

duplicity remove-older-than 1M --force ${DEST}

# Reset the ENV variables. Don't need them sitting around
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export PASSPHRASE=
