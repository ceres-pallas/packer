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

Deploy
------

The corresponding `box` is deployed to [amazon S3][s3]. At the moment
this is a manual step.

Vagrant Cloud
-------------

For ease of use the box is registered with [Vagrant Cloud][vagrant  cloud].
So one can use the following command to initialize a vagrant project.

```sh
vagrant init dvberkel/asteroids
```

[packer]: http://www.packer.io
[vagrant]: http://www.vagrantup.com/
[distribution]: http://www.packer.io/downloads.html
[install]: http://www.packer.io/intro/getting-started/setup.html
[s3]: http://aws.amazon.com/s3/
[vagrant cloud]: https://vagrantcloud.com/
