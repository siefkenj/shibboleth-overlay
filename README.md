### shibboleth-overlay ###

A gentoo overlay to install shibboleth-sp and its dependencies.

### Usage ###

#### Using layman ####

Add `https://raw.github.com/flyser/shibboleth-overlay/master/repositories.xml` to the *overlays* variable in in ``/etc/layman/layman.cfg``.

Run `layman -f && layman -a shibboleth && emerge -a shibboleth-sp`

#### Manual ####

Clone `https://github.com/flyser/shibboleth-overlay.git` repository somewhere and add the path to the *PORTDIR_OVERLAY* variable in `/etc/portage/make.conf`

### State ###

Note that it is currently unmaintaned, but as shibboleth does not release
new versions that often, chances are good, that it is still current.
If not, you can likely just rename the ebuilds to the new version number.
