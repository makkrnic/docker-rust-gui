# docker-rust-gui

This repository is based on [jimmycuadra/docker-rust](https://github.com/jimmycuadra/docker-rust).

Public trusted images available on:

* [Docker Hub](https://hub.docker.com/r/mkrnic/rust-gui/)

This repository is used to build a Docker image for the Rust programming language and a few supporting tools. The image includes `rustc`, `rustdoc`, `cargo`, `git`, SSL certificates, xorg, and build essentials, so it should be able to run `cargo build` on most projects out of the box. The path `/source` is a volume where you can mount a Cargo project from the host machine.

## Usage

The following command will drop you into a Bash shell with the current directory on the host shared. From there you can run `rustc`, `rustdoc`, and `cargo` as you please.

``` bash
docker run -it --rm -v $(pwd):/source -v /tmp/.X11-unix/:/tmp/.X11-unix -e "DISPLAY=$DISPLAY" mkrnic/rust-gui
```

Make sure that the container has correct permissions on host's X. You can set those with `xhost +`. *Caution:* This is insecure so only do this if you know what you are doing.

For more details see the [link](http://wiki.ros.org/docker/Tutorials/GUI).

## License

[MIT](http://opensource.org/licenses/MIT)
