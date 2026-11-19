# Package sources

A source descriptor tells hd where an external package repository lives
and which platforms it serves. hd reads `repos/*.yml` and searches the
sources matching the running platform, e.g. `hd search curl` shows
`debian-stable/curl`, `homebrew/curl` and `chocolatey/curl` on their
platforms. `hd install <source>/<name>` addresses a package directly.

| Field | Meaning |
|---|---|
| `name` | the source name used in the `source/package` address |
| `kind` | the form of the source, see below |
| `mirror` / `apiURL` | where the machine readable index lives |
| `suite`, `components` | of `apt-index`: which suite and components to search |
| `platforms` | optional override of the platforms the kind serves |

Every kind carries its platform by default, an explicit `platforms` list
overrides it (a linuxbrew style source declares `platforms: [darwin, linux]`).

| Kind | Platform | Form |
|---|---|---|
| `apt-index` | linux | the `Packages.gz` indexes of an apt mirror, cached for a day, SHA256 verified installs |
| `brew-api` | darwin | the Homebrew formula API (`formula.json`) |
| `choco-api` | windows | the Chocolatey NuGet search feed |
