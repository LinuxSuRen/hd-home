> This README file was generated by [yaml-readme](https://github.com/LinuxSuRen/yaml-readme), please don't edit it directly!

[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/LinuxSuRen/hd-home)
![GitHub All Releases](https://img.shields.io/github/downloads/linuxsuren/http-downloader/total)

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
| Name | Latest | Download |
|---|---|---|
{{- range $val := .}}
| [{{$val.filename}}](https://github.com/{{$val.parentname}}/{{$val.filename}}) | [![GitHub release](https://img.shields.io/github/release/{{$val.parentname}}/{{$val.filename}}.svg?label=release)](https://github.com/{{$val.parentname}}/{{$val.filename}}/releases/latest) | ![GitHub All Releases](https://img.shields.io/github/downloads/{{$val.parentname}}/{{$val.filename}}/total) |
{{- end}}

## Contribution

Please feel free to checkout the [CONTRIBUTION](CONTRIBUTION.md) if you are interested in this project.
