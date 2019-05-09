#! /bin/sh
#!/bin/bash

tail -F /var/log/nginx/* &
nginx -g 'daemon off;'