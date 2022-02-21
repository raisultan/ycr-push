#!/bin/bash

if [[ -z ${KEY_JSON} ]]
then
    echo "KEY_JSON was not provided"
    exit 1
fi

if [[ -z ${REGISTRY_ID} ]]
then
    echo "REGISTRY_ID was not provided"
    exit 1
fi

if [[ -z ${IMAGE_NAME} ]]
then
    echo "IMAGE_NAME was not provided"
    exit 1
fi

if [[ -z ${IMAGE_TAG} ]]
then
    echo "IMAGE_TAG was not provided"
    exit 1
fi

if [[ -z ${DOCKERFILE_PATH} ]]
then
    echo "DOCKERFILE_PATH was not provided"
    exit 1
fi

if [[ -z ${DOCKERFILE_CONTEXT} ]]
then
    dockerfile_context="."
else
    dockerfile_context=${DOCKERFILE_CONTEXT}
fi

echo "${KEY_JSON}" > key.json

# login
cat key.json | docker login --username json_key --password-stdin cr.yandex

# build
docker build -t cr.yandex/${REGISTRY_ID}/${IMAGE_NAME}:${IMAGE_TAG} -f ${DOCKERFILE_PATH} ${dockerfile_context}
 
# push
docker push cr.yandex/${REGISTRY_ID}/${IMAGE_NAME}:${IMAGE_TAG}
