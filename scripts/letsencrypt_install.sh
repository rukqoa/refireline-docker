#!/bin/bash
git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
/opt/letsencrypt/letsencrypt-auto certonly --standalone --email $1 -d $2
