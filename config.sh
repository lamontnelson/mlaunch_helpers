CONFIG=cluster_config.yml
NODES=`yq -r .nodes $CONFIG`
VERSION=`yq -r .version $CONFIG`
PORT=`yq -r .port $CONFIG`
MONGODB_BIN=`m bin "$VERSION"`
NUM_SHARDS=`yq -r .shards $CONFIG`

echo nodes=$NODES
echo version=$VERSION
echo port=$PORT
echo mongo_bin=$MONGODB_BIN
echo num_shards=$NUM_SHARDS

