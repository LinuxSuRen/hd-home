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
targetBinary: kk   # a desired target binary file name
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

## Fields

| Name | Description | Example |
|---|---|---|
| `fromSource` | Indicate if this tool supports to install via `go install github.com/xxx/xxx` | [ks](config/kubesphere-sigs/ks.yml) |
| `tar` | Indicate if the release asset is a tarball | [kind](config/kubernetes-sigs/kind.yml) |
| `replacements` | A map of replacements for the variant of os or arch | [ko](config/google/ko.yml) |
| `additionBinaries` | You can add additional binary files if there are multiple files | [containerd](config/containerd/containerd.yml) |
| `targetBinary` | Give a new binary file name if you don't use the origin one | [podman](config/containers/podman.yml) |
| `binary` | The binary file name in the tarball | [hd](config/linuxsuren/http-downloader.yml) |