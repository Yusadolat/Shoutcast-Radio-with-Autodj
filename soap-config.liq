#!/usr/bin/liquidsoap

# Log dir
 set("log.file.path","/home/dawah/radio1/log/liquidsoap.log")

# enable daemon mode
set("init.daemon",true)

# do not create a pid file
set("init.daemon.pidfile",false)

# Music
myplaylist = mksafe(playlist("/home/dawah/radio1/mp3s"))

# Start building the feed with music
radio = myplaylist

output.shoutcast(%mp3,
        host = "IP",
        port = 8000,
        name = "Stream name",
        password = "password",
        radio
)
