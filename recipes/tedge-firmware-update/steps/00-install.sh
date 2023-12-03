#!/bin/sh
set -eu
install -D -m 644 "${RECIPE_DIR}/files/tedge-firmware" -t /etc/sudoers.d/
install -D -m 644 "${RECIPE_DIR}/files/system.toml" -t /etc/tedge/
install -D -m 644 "${RECIPE_DIR}/files/firware_update.rugpi.toml" -t /usr/share/tedge-workflows/
install -D -m 755 "${RECIPE_DIR}/files/rugpi_workflow.sh" -t /usr/bin/
install -D -m 755 "${RECIPE_DIR}/files/firmware-version" /usr/share/tedge-inventory/scripts.d/80_c8y_Firmware

# Use symlink so that the workflow file can be updated within the image
ln -s /usr/share/tedge-workflows/firware_update.rugpi.toml /etc/tedge/operations/firmware_update.toml
