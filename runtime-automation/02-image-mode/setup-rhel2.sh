#!/bin/sh
# echo "Starting module called 02-image-mode" >> /tmp/progress.log

# ## Disable partial images.  Fixes the zstd:chunkedcd / bugzilla that will brick the box if run on this lab
# ## Related to https://github.com/bootc-dev/bootc/issues/1204
# sed -ie 's/enable_partial_images = "true"/enable_partial_images = "false"/' /etc/containers/storage.conf

