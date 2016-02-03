# docker-deluge

This is a docker implementation of the Deluge torrent applicaiton. The configs/logs are located in the /data volume which I mount from my docker host along with my NAS.

The default password is `deluge`.

```docker run --name="couchpotato" --publish=8112:8112  --publish=53160:53160 --publish=58846:58846 --volume=/data/warehouse/delugeh:/data --volume=/mnt/media:/mnt/media --restart="always" --detach=true jusrob/deluge```

