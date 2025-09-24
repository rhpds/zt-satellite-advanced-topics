#!/bin/bash

## Convert the system to Image Mode

sed -ie 's/enable_partial_images = "true"/enable_partial_images = "false"/' /etc/containers/storage.conf
podman run --rm --privileged -v /dev:/dev -v /var/lib/containers:/var/lib/containers -v /:/target --pid=host --security-opt label=type:unconfined_t quay.io/toharris/rhel-bootc:summit-2025 bootc install to-existing-root --root-ssh-authorized-keys /target/root/.ssh/authorized_keys --acknowledge-destructive
chmod +x /ostree/deploy/default/deploy/*/etc/rc.d/rc.local
