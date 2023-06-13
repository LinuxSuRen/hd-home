[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/LinuxSuRen/hd-home)
![GitHub All Releases](https://img.shields.io/github/downloads/linuxsuren/http-downloader/total)
[![LinuxSuRen/open-source-best-practice](https://img.shields.io/static/v1?label=OSBP&message=%E5%BC%80%E6%BA%90%E6%9C%80%E4%BD%B3%E5%AE%9E%E8%B7%B5&color=blue)](https://github.com/LinuxSuRen/open-source-best-practice)

# Home for hd

[hd](https://github.com/LinuxSuRen/http-downloader) is a HTTP download tool.

Install hd via the following command:
```shell
curl https://linuxsuren.github.io/tools/install.sh|sh
```

It can download/install from GitHub release assets. For example:

```shell
hd get jcli
```

Install a tool from other package management:
```shell
hd install podman
```

Consider the naming of asset files are not all the same, we collect the projects here.

## Available tools

The total number of tools is: {{len .}}


| Name | Latest | Download | Edit |
|---|---|---|---|
{{- range $val := .}}
| [{{$val.filename}}](https://github.com/{{$val.parentname}}/{{$val.filename}}) | [![GitHub release](https://img.shields.io/github/release/{{$val.parentname}}/{{$val.filename}}.svg?label=release)](https://github.com/{{$val.parentname}}/{{$val.filename}}/releases/latest) | ![GitHub All Releases](https://img.shields.io/github/downloads/{{$val.parentname}}/{{$val.filename}}/total) | [Edit]({{$val.fullpath}}) |
{{- end}}

## Contribution

Please feel free to checkout the [CONTRIBUTION](CONTRIBUTION.md) if you are interested in this project.
