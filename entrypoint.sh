# !/bin/bash -e

echo "CONTENTS"
ls -a

if [[ -z ${KEY_JSON} ]]
then
    echo "KEY_JSON was not provided"
    exit 1
fi

if [[ -z ${CLOUD_ID} ]]
then
    echo "CLOUD_ID was not provided"
    exit 1
fi

if [[ -z ${FOLDER_ID} ]]
then
    echo "FOLDER_ID was not provided"
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

echo ${KEY_JSON} > key.json

yc config set service-account-key key.json
yc config set cloid-id ${CLOUD_ID}
yc config set folder-id ${FOLDER_ID}
 
docker build -t cr.yandex/${REGISTRY_ID}/${IMAGE_NAME}:${IMAGE_TAG} -f ${DOCKERFILE_PATH} .
 
docker push cr.yandex/${REGISTRY_ID}/${IMAGE_NAME}:${IMAGE_TAG}
