DATA_DIR=$HOME/.transmission
DOWNLOAD_DIR=$HOME/Downloads

docker run -d \
-v $DATA_DIR:/config \
-v $DOWNLOAD_DIR:/downloads \
-v $DOWNLOAD_DIR:/watch \
-e PGID=$GID -e PUID=$UID \
-e TZ=Europe/London \
-p 9091:9091 -p 51413:51413 \
-p 51413:51413/udp \
linuxserver/transmission
