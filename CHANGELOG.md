# Changelog

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [3.2.1] - 2021-04-21

### Added
- Setting php.composer.major_version plus readme section

### Changed
- Now use composer major_version 2 by default

### Fixed
- Adapt xdebug.ini to be compatible with xdebug versions 2 and 3 [PR-32](https://github.com/OXID-eSales/oxvm_base/pull/32)

## [3.2.0] - 2020-10-26

### Changed
- Use strict modes for MySQL 5.7
- Increase default memory from 512 to 1024 MB
- Set MariaDB/MySQL grants via variables

### Fixed
- Clean up php versions on version changes
- MySQL root password changing on provision
- Improved coding style [PR-31](https://github.com/OXID-eSales/oxvm_base/pull/31)
- Use Composer v1 release line

## [3.1.0] - 2020-02-19

### Added
- Support for MySQL 8.0
- Support for MariaDB 10.4

### Changed
- The java and elasticsearch get_url tasks now also will do 5 retries
- Add zip to packages and also to php extensions
- Add mbstring to the default php extensions

### Fixed
- Add html directory in www to fix [ISSUE-29](https://github.com/OXID-eSales/oxvm_base/issues/29)

### Removed
- Delete the server.unattended_upgrade option with related files and tasks

## [3.0.3] - 2019-07-20

### Fixed
- Completely disable unattended upgrades on first start

### Removed
- Unused tasks from the mysql installation role

## [3.0.2] - 2019-07-05

### Added
- Performance improvements for Virtualbox [PR-26](https://github.com/OXID-eSales/oxvm_base/pull/26)
- Apache restart if 127.0.0.1 does not return status 200 

### Changed
- Restrict the "Check swap" and "Enable swap" role to Virtualbox
- Enhanced auto-upgrade templates
- Restart services during package upgrades without asking
- Use oxvm_assets for elasticsearch, libjpeg and openjdk-7

### Fixed
- Provide localhost file for ansible as root
- Ensure that en_US.UTF-8 is the default locale
- Use outgoing IP instead of hostname for xdebug

## [3.0.1] - 2019-05-21

### Added
- Check if elasticsearch decompound plugin is already installed [PR-28](https://github.com/OXID-eSales/oxvm_base/pull/28)
- MySQL restart handler
- MySQL setting for the sql_mode

### Fixed
- Use Java installation role instead of apt package in Selenium installation
- Define version 4.0 for Varnish package installation
- Check and install VB Guest Additions only on first provision

## [3.0.0] - 2019-05-10

### Changed
- Default base box changed to bento/ubuntu-18.04

### Removed
- Parallels base_box entry as it can use the default base box now
- MySQL 5.5 support
- Deleted php handler role, which was not being used

### Fixed
- Changed MySQL keyserver to a more robust format
- Exchanged static repo destination for elasticsearch installation to config parameter
- Java installation adapted for Ubuntu Bionic 18.04 

## [2.2.0] - 2019-04-26

### Added
- Add PHP extension sqlite3 to installation defaults
- Introduce MySQL version setting and set '5.7' as default

### Changed
- Use Firefox version 31.6.0 ESR instead of 31.0

### Removed
- Delete mcrypt from the default PHP packages

### Fixed
- Elasticsearch installation [PR-25](https://github.com/OXID-eSales/oxvm_base/pull/25)

## [2.1.2] - 2018-12-07

### Changed
- Remove exact version number from hirak/prestissimo requirement
- Replace with_items syntax for apt tasks with new packages syntax
- Always use the present state for apt installation roles except for system packages
- Add ca-certificates to system packages
- Introduce timeout of 60 seconds for get_url tasks (overwriting default of 10 seconds)
- Add 5 retries to get_url tasks

## [2.1.1] - 2018-11-12

### Added
- Config option for gitlab tokens [PR-23] (https://github.com/OXID-eSales/oxvm_base/pull/23)
- Config option for http authentication [PR-23] (https://github.com/OXID-eSales/oxvm_base/pull/23)

### Changed
- Limit the doxygen uninstall action to just uninstall doxygen

## [2.1.0] - 2018-09-13

### Added
- Doxygen role

### Changed
- Increased composer timeout to 15 minutes by default
- Install git by default

## [2.0.1] - 2018-09-07

### Changed
- Update Vagrantfile for changes in plugin loading [PR-22](https://github.com/OXID-eSales/oxvm_base/pull/22)

## [2.0.0] - 2018-07-18

### Changed
- PHP installation process improved [PR-21](https://github.com/OXID-eSales/oxvm_base/pull/21)
- PHP 7.1 is installed by default.

### Removed
- phpbrew and phpswitch functionality was removed, as it was giving unstable results. 

## [1.1.3] - 2018-07-12

### Changed
- Change permissions of `/vagrant` share only for Windows ([ansible issue](https://github.com/ansible/ansible/issues/42388))

## [1.1.2] - 2018-07-11

### Changed
- Set permissions for shared directory since Ansible's behaviour changed in 2.6.1

## [1.1.1] - 2018-05-15

### Changed
- Remove triggers plugin requirement if Vagrant version is >= 2.1.0

## [1.1.0] - 2017-11-22

### Added
- Selenium role
- Landing page with installation role

### Changed
- Switched packages source to german sources by default
- README now contains configuration information
- Varnish setup information

[3.2.1]: https://github.com/OXID-eSales/oxvm_base/compare/v3.2.0...v3.2.1
[3.2.0]: https://github.com/OXID-eSales/oxvm_base/compare/v3.1.0...v3.2.0
[3.1.0]: https://github.com/OXID-eSales/oxvm_base/compare/v3.0.3...v3.1.0
[3.0.3]: https://github.com/OXID-eSales/oxvm_base/compare/v3.0.2...v3.0.3
[3.0.2]: https://github.com/OXID-eSales/oxvm_base/compare/v3.0.1...v3.0.2
[3.0.1]: https://github.com/OXID-eSales/oxvm_base/compare/v3.0.0...v3.0.1
[3.0.0]: https://github.com/OXID-eSales/oxvm_base/compare/v2.2.0...v3.0.0
[2.2.0]: https://github.com/OXID-eSales/oxvm_base/compare/v2.1.2...v2.2.0
[2.1.2]: https://github.com/OXID-eSales/oxvm_base/compare/v2.1.1...v2.1.2
[2.1.1]: https://github.com/OXID-eSales/oxvm_base/compare/v2.1.0...v2.1.1
[2.1.0]: https://github.com/OXID-eSales/oxvm_base/compare/v2.0.1...v2.1.0
[2.0.1]: https://github.com/OXID-eSales/oxvm_base/compare/v2.0.0...v2.0.1
[2.0.0]: https://github.com/OXID-eSales/oxvm_base/compare/v1.1.3...v2.0.0
[1.1.3]: https://github.com/OXID-eSales/oxvm_base/compare/v1.1.2...v1.1.3
[1.1.2]: https://github.com/OXID-eSales/oxvm_base/compare/v1.1.1...v1.1.2
[1.1.1]: https://github.com/OXID-eSales/oxvm_base/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/OXID-eSales/oxvm_base/compare/v1.0.0...v1.1.0
