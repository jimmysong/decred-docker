[![Docker Pulls](https://img.shields.io/docker/pulls/jimmysong76/decred-docker.svg)](https://hub.docker.com/r/jimmysong76/decred-docker/)
[![Docker Stars](https://img.shields.io/docker/stars/jimmysong76/decred-docker.svg)](https://hub.docker.com/r/jimmysong76/decred-docker/)

decred
===
Simple SSH-connectable docker container that uses:

 * Ubuntu Core 18.04
 * Decred 1.3.0

Usage
-----
You can build with

    (host) $ docker build -t jimmysong76/decred-docker .

or download with

    (host) $ docker pull jimmysong76/decred-docker

Create and start with

    (host) $ id
    uid=XXXX(YYYY) gid=ZZZZ(YYYY)
    (host) $ docker create --name=decred -p 1122:22 -v <dcrd dir>:/dcrd -v <dcrwallet dir>:/dcrwallet -e PUID=XXXX -e PGID=ZZZZ jimmysong76/decred-docker
    (host) $ docker start decred

At this point, add authorized keys to the image

    (host) $ docker cp path/to/authorized_keys decred:/root/.ssh

Now you can connect to the ssh server:

    $ ssh root@<SERVER_NAME> -p 1122
    Welcome to Ubuntu ...
    
     * Documentation:  https://help.ubuntu.com
     * Management:     https://landscape.canonical.com
     * Support:        https://ubuntu.com/advantage
    $ dcrwallet --create

Credit
------

Based off the armory-x11 (http://github.com/jimmysong/armory-x11) project.