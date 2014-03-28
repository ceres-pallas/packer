Packer
======

[Packer][packer] is

> a tool for creating identical machine images for multiple platforms
  from a single source configuration.

We use it to create an [Vagrant][vagrant] Base Box.

Installation
------------

A [packer distribution][distribution] can be used to install
packer. Follow the [installation instructions][install] how to setup
packer correcly.

Validate
--------

With `packer` available the following command validates the asteroids
box:

```sh
packer validate asteroids.json
```

Build
-----

When `packer validate` successfully validates it is time to build the
box.

```sh
packer build asteroids.json
```

[packer]: http://www.packer.io
[vagrant]: http://www.vagrantup.com/
[distribution]: http://www.packer.io/downloads.html
[install]: http://www.packer.io/intro/getting-started/setup.html
