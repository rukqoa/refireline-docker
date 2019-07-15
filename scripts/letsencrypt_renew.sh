#!/bin/bash
/opt/letsencrypt/letsencrypt-auto certonly --standalone --renew-by-default --email $1 -d $2
