# meta-mender-clearfog

Mender integration layer for Clearfog family of boards.

The supported and tested boards are:

- [Clearfog](https://hub.mender.io/t/solidrun-clearfog-base/370)
- [Clearfog-Pro](https://hub.mender.io/t/solidrun-clearfog-pro/1148)
- Clearfog-GTR (Not Tested, Should Work)

Visit the individual board links above for more information on status of the
integration and more detailed instructions on how to build and use images
together with Mender for the mentioned boards.

## Dependencies

This layer depends on:

```Text
URI: https://github.com/SolidRun/meta-clearfog
branch: master
revision: HEAD
```

```Text
URI: https://github.com/mendersoftware/meta-mender.git
layers: meta-mender-core
branch: warrior
revision: HEAD
```

## Quick start

The following commands will setup the environment and allow you to build images
that have Mender integrated.

```bash
mkdir mender-clearfog && cd mender-clearfog
repo init -u https://github.com/mendersoftware/meta-mender-community \
           -m meta-mender-clearfog/scripts/manifest-clearfog.xml \
           -b warrior
repo sync
source setup-environment clearfog
MACHINE=clearfog bitbake core-image-base
```

## Maintainer

The authors and maintainers of this layer are:

- Mirza Krak - <mirza.krak@northern.tech> - [mirzak](https://github.com/mirzak)
- Wayne Adams - <wadams@davey.com.au> - [Valks](https://github.com/Valks)

Always include the maintainers when suggesting code changes to this layer.
