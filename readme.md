### Description
Push Docker images to Yandex Container Registry using Github Actions.

### Variables
1. `KEY_JSON` - contents of key.json
2. `DOCKERFILE_CONTEXT` - optional
3. `DOCKERFILE_PATH`
4. `REGISTRY_ID`
5. `IMAGE_NAME`
6. `IMAGE_TAG`

### Example
```yaml
on:
  push:
    branches:
      - main

jobs:
  build-and-push:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: raisultan/ycr-push@main
        env:
          KEY_JSON: <KEY_JSON>
          REGISTRY_ID: <REGISTRY_ID>
          DOCKERFILE_PATH: <DOCKERFILE_PATH>
          IMAGE_NAME: <IMAGE_NAME>
          IMAGE_TAG: <IMAGE_TAG>
```