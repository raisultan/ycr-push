### Description
Push your docker images to Yandex Container Registry using Github Actions.

### Variables Required
<mark>KEY_JSON</mark> - path to json file with service account key
<mark>CLOUD_ID</mark> - cloud id
<mark>FOLDER_ID</mark> - folder id

### Commands Used
```bash
# installation
$ curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash
$ exec bash  # exec "%SHELL" - to restart default terminal

# configuration
$ yc config set service-account-key <KEY_JSON>
$ yc config set cloud-id <CLOUD_ID>
$ yc config set folder-id <FOLDER_ID>
```
