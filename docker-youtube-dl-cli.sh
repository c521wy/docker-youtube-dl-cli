#! /bin/sh

# set -x

docker run -it --rm \
    --network host \
    -v $(pwd):/output \
    -e "http_proxy=${http_proxy}" \
    -e "https_proxy=${https_proxy}" \
    registry.cn-beijing.aliyuncs.com/c521wy/youtube-dl-cli \
    $@
