#!/bin/bash -e

image_name=kangwoo/kfserving-custom-hello
image_tag=0.0.1
full_image_name=${image_name}:${image_tag}

cd "$(dirname "$0")"

docker build -t "$full_image_name" .
docker push "$full_image_name"
