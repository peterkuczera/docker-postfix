# docker-postfix

Run [postfix](http://www.postfix.org) in a Docker container.

### Usage

```
docker run \
  -v /path/to/main.cfg:/etc/postfix/main.cf:ro \
  -v /path/to/queue:/var/spool/postfix \
  registry.gitlab.com/peterkuczera/docker-postfix/postfix
```
