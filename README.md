[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/LinuxSuRen/hd-home)

# Home for hd

[hd](https://github.com/LinuxSuRen/http-downloader) is a HTTP download tool.

It can download/install from GitHub release assets. For example:

`hd get jenkins-zh/jenkins-cli/jcli -t 6`

Consider the naming of asset files are not all the same, we collect the projects here.

# How to submit?

Please create a YAML file in `config/$org/$repo.yml`.

Below is an example of it:

```
filename: "{{.Name}}-{{.OS}}-{{.Arch}}"
binary: kk         # please provide a binary file name if the release filename is not the final one
tar: false         # if this is a tar file
replacements:      # the replacement of os, arch
  amd64: 64bit
  darwin: macos
```

Even you can provide an external resource instead of GitHub release:

```
url: "https://get.helm.sh/{{.Name}}-{{.Version}}-{{.OS}}-{{.Arch}}.tar.gz"
```

## Variables

| Name | Description |
|---|---|
| `{{.Name}}` | The filename |
| `{{.OS}}` | Could be `linux`, `darwin`. It align with `runtime.GOOS` |
| `{{.Arch}}` | It align with `runtime.GOARCH` |
| `{{.Version}}` | The version. For example: `v1.0.1` |
| `{{.VersionNum}}` | The version without the prefix `v`. For example: `1.0.1` |
