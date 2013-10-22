# Packer Template for Centos 6.4 Images

This repository contains a Packer template for building machine images
that are centos 6.4 basic images in both vmware as well as virtualbox.

## Usage

First, [install Packer](http://www.packer.io/intro/getting-started/setup.html).
Then, clone this repository and `cd` into it.

Run the following:

```
$ packer build centos6.4-x86_64.json
```

You can choose to build only one type of image by running the following:

```
$ packer build -only=vmware centos6.4-x86_64.json
```

At the end of that, you'll have an AMI ready to go for Docker.