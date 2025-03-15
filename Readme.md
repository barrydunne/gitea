This repository contains scripts for [Gitea](https://about.gitea.com/).

# Getting started

Run Gitea

```pwsh
./Run-Gitea.ps1
```

## First Run

If this is the first time running GoCD:

1. Open Gitea at http://localhost:3000 
1. Set `Server Domain` to `host.docker.internal`
1. Set `Gitea Base URL` to `http://host.docker.internal:3001/`  _(needed for webhooks to work)_
1. Press `Install Gitea` and wait for the login page
1. Click `Register now`
1. Register a new user
1. From `User > Settings > Applications` generate a new token for Jenkins with the following minimum permssions
    * orgnaisation `Read`
    * repository `Read and Write`
    * user `Read`
1. Copy the access token that appears on the page



### ALLOWED_HOST_LIST

For a webhook to work the target must be allowed.

1. Edit the `data/gitea/conf/app.ini` file to include these lines:
    ```
    [webhook]
    ALLOWED_HOST_LIST = *
    ```
1. Restart Gitea