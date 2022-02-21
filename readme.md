### Description
Push Docker images to Yandex Container Registry using Github Actions.

### Variables Required
1. `KEY_JSON` - contents of key.json
2. `CLOUD_ID`
3. `FOLDER_ID`
4. `DOCKERFILE_PATH`
5. `REGISTRY_ID`
6. `IMAGE_NAME`
7. `IMAGE_TAG`

### Commands Used
```bash
# installation
$ curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash
$ exec bash  # exec "%SHELL" - to restart default terminal

# configuration
$ yc config set service-account-key <KEY_JSON>
$ yc config set cloud-id <CLOUD_ID>
$ yc config set folder-id <FOLDER_ID>

# build image  - note: context specification may be needed
$ docker build -t cr.yandex/<REGISTRY_ID>/<IMAGE_NAME> -f <DOCKERFILE_PATH> .

# push image
$ docker push cr.yandex/<REGISTRY_ID>/<IMAGE_NAME>:<IMAGE_TAG>
```
