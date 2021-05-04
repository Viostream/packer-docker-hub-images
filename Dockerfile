FROM hashicorp/packer:1.7.2

LABEL MAINTAINER="Stuart Auld <stuart.auld@viostream.com>"

RUN \
  wget -q https://github.com/rgl/packer-provisioner-windows-update/releases/download/v0.10.1/packer-provisioner-windows-update_0.12.0_linux_amd64.tar.gz \
  && tar -zxvf packer-provisioner-windows-update_0.12.0_linux_amd64.tar.gz \
  && rm packer-provisioner-windows-update_0.12.0_linux_amd64.tar.gz LICENSE.txt README.md \
  && chmod +x packer-provisioner-windows-update \
  && mv packer-provisioner-windows-update /bin/
