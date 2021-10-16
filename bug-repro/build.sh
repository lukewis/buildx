# Default the build id to "local" unless a commandline parameter is specified
BUILD_ID=${1:-local}

docker buildx create --name azure --use
docker buildx build --tag lawisnie/buildx-stderr:$BUILD_ID --push --progress plain --platform linux/amd64 .
docker buildx rm azure