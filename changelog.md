# Changelog
All notable changes to this project will be documented in this file.

## [0.0.5] - unreleased
### Added
- Keep a changelog PR#14
- Add `--forked` option
- Fix the name output when displaying hashes PR#15

### Changed
- Moved the option parsing code from a hash to an ostruct PR#12
- Extract the config code to a function PR#13

## [0.0.4] - 2020-07-14
### Added
- Added `--hash` option to show the hash of the matched file. PR#10
  This makes it simplier to compare the contents of a file over multiple repos.

## [0.0.3] - 2020-07-12
### Added
- Add the `--long` output option to make `github-ls resemble `ls -l`
- Add the `--all` output to show source repos, forks and archived using one flag PR#9

## [0.0.2] - 2020-07-12
### Added
- Added the ability to filter repos on the abscense or presence of a file PR#6

## [0.0.1] - 2020-07-12
### Added
- Initial release of `github-ls` provides just enough functionality to list
  a given users GitHub repositories
