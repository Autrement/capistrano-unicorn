## [0.2.1] 2015-05-04

### Changed

Execute actions only on `release_roles` instead of `roles`.

## [0.2.0] 2015-04-28

### Changed

Changed the namespace from "deploy" to "unicorn"

A Capistrano plugin should not monkeypatch a common namespace.
It should have its own namespace and optionaly plug itself
on the default workflow (TODO).

## [0.1.1] 2015-02-26

### Added

Added a blank `lib/capistrano-unicorn.rb` file to help Bundle find something by default.

## [0.1.0] 2015-02-13

### Added

Initial commit