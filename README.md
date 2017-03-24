### shibboleth-overlay ###

A gentoo overlay to install shibboleth-sp and its dependencies.

### Usage ###

#### Using layman ####

Add overlay with layman:
Run `layman -o https://raw.github.com/nelsonglory/shibboleth-overlay/master/repositories.xml -f -a shibboleth && emerge -a shibboleth-sp`

#### Manual ####

Clone `https://github.com/nelsonglory/shibboleth-overlay.git` repository somewhere and add the path to the *PORTDIR_OVERLAY* variable in `/etc/portage/make.conf`

### State ###

Note that it is currently unmaintaned, but as shibboleth does not release
new versions that often, chances are good, that it is still current.
If not, you can likely just rename the ebuilds to the new version number.
