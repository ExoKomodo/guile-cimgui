# guile-cimgui

## Important Links

- [Source](https://git.sr.ht/~jamesaorson/guile-cimgui)
- [Dear Imgui](https://github.com/ocornut/imgui)
- [cimgui](https://github.com/cimgui/cimgui)

## Pipeline Status

- Build [![Build status](https://builds.sr.ht/~jamesaorson/guile-cimgui/commits/main/build.yml.svg)](https://builds.sr.ht/~jamesaorson/guile-cimgui/commits/main/build.yml)

- Mirror [![Git mirror status](https://builds.sr.ht/~jamesaorson/guile-cimgui/commits/main/mirror.yml.svg)](https://builds.sr.ht/~jamesaorson/guile-cimgui/commits/main/mirror.yml)

## Setup

To setup a system, `root` access is often required. So, if using `sudo`:

```shell
sudo make setup
```

And if not:

```shell
make setup
```

## Running

### Locally

```shell
make run
```

### Containerized

```shell
make container-build container-run
```

or using bash magic

```bash
make container-{build,run}
```

`make container-run` will live load the relevant application code from your git repo into the container, via a volume,
allowing for live reloads.
