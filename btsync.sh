DATA_DIR=$HOME/.btsync
SYNC_DIR=$HOME/Downloads/sync

docker run -d \
  -p 8888:8888 -p 55555:55555 \
  -v $DATA_DIR:/mnt/sync \
  -v $SYNC_DIR:/mnt/mounted_folders \
  --restart on-failure \
  resilio/sync
