#!/bin/bash

# need configuration in: gedit /etc/ssmtp/ssmtp.conf
# edit:
: '
    root=yourEmailAddress@gmail.com
    mailhub=smtp.gmail.com:587
    AuthUser=yourEmailAddress@gmail.com
    AuthPass=yourPassword
    UseSTATTLS=yes
'
ssmtp your@emailaddress

# Then run script and edit
: '
    To: receiveEmailAddress@gmail.com
    From: yourEmailAddress@gmail.com
    Cc: receiveEmailAddress@gmail.com
    Subject: TEST
    This is a body...
'
