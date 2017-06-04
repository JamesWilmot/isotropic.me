#!/bin/bash

week="$(date +%V)"

filename="wiki-data-week$week.tar.gz"

sudo tar -zcf /home/ubuntu/backups/$filename /home/ubuntu/wiki/data/
aws s3 cp /home/ubuntu/backups/$filename s3://an.isotropic.me-backup/backups/hitchhiker.isotropic.me/


# echo "hi world" | mail -s "test" "jameswilmot2000@gmail.com" -aFrom:root@hitchhiker.isotropic.me

