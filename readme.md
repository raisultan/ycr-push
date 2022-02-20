### DESCRIPTION
Push your docker images to YCR using Github Actions.

### CONSTANTS
- KEY_JSON: path to json file with service account key
- CLOUD_ID: cloud id
- FOLDER_ID: folder id

### COMMANDS USED
```bash
# installation
$ curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash
$ exec bash  # exec "%SHELL" - to restart default terminal

# configuration
$ yc config set service-account-key <KEY_JSON>
$ yc config set cloud-id <CLOUD_ID>
$ yc config set folder-id <FOLDER_ID>
```
