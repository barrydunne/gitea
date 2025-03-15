$data = Join-Path -Path $PSScriptRoot -ChildPath 'data'

$containerId = docker ps -q -f name=gitea
if (-not $containerId) {
    Write-Host 'Starting Gitea...'
    docker run -d `
        --name gitea `
        --restart unless-stopped `
        -p 3000:3000 `
        -v ${data}:/data `
        gitea/gitea:1.23.5
}
