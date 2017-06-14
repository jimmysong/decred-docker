[![Docker Pulls](https://img.shields.io/docker/pulls/jimmysong76/decred-x11.svg)](https://hub.docker.com/r/jimmysong76/decred-x11/)
[![Docker Stars](https://img.shields.io/docker/stars/jimmysong76/decred-x11.svg)](https://hub.docker.com/r/jimmysong76/decred-x11/)

decred-x11
===
Simple SSH/X11-connectable docker container that uses:

 * Ubuntu Core 16.04
 * Decred 1.0.3


Usage
-----
You can build with

    (host) $ docker build -t jimmysong76/decred-x11 .

or download with

    (host) $ docker pull jimmysong76/decred-x11

Create and start with

    (host) $ id
    uid=XXXX(YYYY) gid=ZZZZ(YYYY)
    (host) $ docker create --name=decred -p 1122:22 -v <dcrd dir>:/dcrd -v <dcrwallet dir>:/dcrwallet -e PUID=XXXX -e PGID=ZZZZ jimmysong76/decred-x11
    (host) $ docker start decred

At this point, add authorized keys to the image

    (host) $ docker cp path/to/authorized_keys decred:/root/.ssh

Now you can connect to the ssh server:

    $ ssh root@<SERVER_NAME> -p 1122
    Welcome to Ubuntu 16.04.1 LTS (GNU/Linux 3.13.0-24-generic x86_64)
    
     * Documentation:  https://help.ubuntu.com
     * Management:     https://landscape.canonical.com
     * Support:        https://ubuntu.com/advantage
    $ dcrwallet --create

In order to see decred, you're going to need an X11 server. Some popular ones:

 * Windows: vcXsrv - https://sourceforge.net/projects/vcxsrv/
 * Mac: XQuartz - https://www.xquartz.org/

Credit
------

Based off the armory-x11 (http://github.com/jimmysong/armory-x11) project.