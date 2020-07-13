# github-ls
A command line tool for showing repositories and related data

## Usage

Show all the repositories under the deanwilson user, including those that are
archived or forks.

    bundle exec ./github-ls deanwilson --archived --fork --long
    ... snip ...
    - - 	 2017-08-18T13:51:59Z 	 0 	 deanwilson/alexa-skill-registered-domain
    - - 	 2018-05-04T21:22:23Z 	 0 	 deanwilson/alexa-skill-webstatuscode
    - - 	 2020-06-11T10:24:18Z 	 0 	 deanwilson/ansible-plugins
    - - 	 2019-05-31T15:22:53Z 	 0 	 deanwilson/aws-scripts
    A - 	 2019-12-27T16:56:03Z 	 0 	 deanwilson/basic-puppet-integration-testing-docker-packer
    - F 	 2019-12-20T12:59:45Z 	 0 	 deanwilson/bulk-merger
    A - 	 2020-07-03T08:29:50Z 	 0 	 deanwilson/cobbler-scripts
    A - 	 2019-12-27T16:53:34Z 	 0 	 deanwilson/deanwilson_pdt
    ... snip ...

This can be piped to command such as `sort` to reorder the output.

    # sort repos by most recently updated
    bundle exec ./github-ls deanwilson --long | sort -nrk 3

    # sort repos by open issues
    bundle exec ./github-ls deanwilson --long | sort -nrk 4

### Find repositories containing a filename

Using the `--with-file` and `--without-file` flags you can list the
repositories that contain or do not contain a given file. I've found this useful
to spot where I'm not applying my linter settings or do not have a CI system configured
for a repository.

    bundle exec ./github-ls deanwilson --with-file /.rubocop.yml

When using `--with-file` you can also specify `--hash` to display a
sha256 hash of the content in the output. This can help find repository
repositories that have inconsistent versions of a file.

    bundle exec ./github-ls deanwilson --with-file /.rubocop.yml --hash --long --all
    A - 	 2019-10-16T08:58:26Z 	 0 	 deanwilson/puppet-liquidtemplates ae2b3d2760e4287a
    - - 	 2020-06-22T09:54:55Z 	 1 	 deanwilson/puppet-multi_epp c9029c39d69e42f5688afa


### Author

[Dean Wilson](https://www.unixdaemon.net)
