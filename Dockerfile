FROM hashicorp/packer

LABEL MAINTAINER="Stuart Auld <stuart.auld@viostream.com>"

RUN \
  wget -q https://github.com/rgl/packer-provisioner-windows-update/releases/download/v0.10.1/packer-provisioner-windows-update_0.10.1_linux_amd64.tar.gz \
  && tar -zxvf packer-provisioner-windows-update_0.10.1_linux_amd64.tar.gz \
  && rm packer-provisioner-windows-update_0.10.1_linux_amd64.tar.gz LICENSE.txt README.md \
  && chmod +x packer-provisioner-windows-update \
  && mv packer-provisioner-windows-update /bin/
