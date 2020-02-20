PuperGrep
========

[![Docker Pulls](https://img.shields.io/docker/pulls/pety3bi/pupergrep.svg)](https://hub.docker.com/r/pety3bi/pupergrep/)

Docker image containing PuperGrep. Based on alpine image.


Usage
-----

Start and expose 80
```bash
docker run -d -p 80:80 -v /var/log:/srv/log --name pupergrep pety3bi/pupergrep
```

----

[Pupergrep - have fun with log files, you nerds!](https://github.com/bobrik/pupergrep)
