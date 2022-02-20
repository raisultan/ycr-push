# !/bin/bash -e

yc config set service-account-key ${KEY_JSON}
yc config set cloid-id ${CLOUD_ID}
yc config set folder-id ${FOLDER_ID}

docker push cr.yandex/${REGISTRY_ID}/${IMAGE_NAME}:${IMAGE_TAG}
