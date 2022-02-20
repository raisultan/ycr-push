### Description
Push Docker images to Yandex Container Registry using Github Actions.

### Variables Required
1. `KEY_JSON`
2. `CLOUD_ID`
3. `FOLDER_ID`
4. `REGISTRY_ID`
5. `IMAGE_NAME`
6. `IMAGE_TAG`

### Commands Used
```bash
# installation
$ curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash
$ exec bash  # exec "%SHELL" - to restart default terminal

# configuration
$ yc config set service-account-key <KEY_JSON>
$ yc config set cloud-id <CLOUD_ID>
$ yc config set folder-id <FOLDER_ID>

# push image
$ docker push cr.yandex/<REGISTRY_ID>/<IMAGE_NAME>:<IMAGE_TAG>
```
