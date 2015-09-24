# Quake & Half-Life MIME types

Collection of mime-type definitions for various Quake and Half-Life file formats. MIME types can be installed on Freedesktop systems (like GNU/Linux or FreeBSD) so file managers could recognize these formats.

## Install MIME types

Run to install mime-types in user space:

    sh install-mime-types.sh

This will also update mime database.

## Install icons

This repository contains icons for some types.

Run to generate png-images from svg sources:

    sh generate-png-images.sh # Note: requires inkscape to be installed in PATH.
    
Run to install icons in user space:

    sh  install-icons.sh

## License

All files (including svg images, shell scripts and MIME-type XML definitions) are licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/). 
You can open an issue if you need some of these files under the other license.
