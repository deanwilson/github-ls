Gem::Specification.new do |spec|
  spec.name        = 'github-ls'
  spec.version     = '0.1.0'
  spec.homepage    = 'https://github.com/deanwilson/github-ls'
  spec.license     = 'GPLv2'
  spec.author      = 'Dean Wilson'
  spec.email       = 'dean.wilson@gmail.com'
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    # 'lib/**/*',
    # 'spec/**/*',
  ]
  spec.test_files  = Dir['spec/**/*']
  spec.summary     = 'github-ls - a tool for showing repositories and related data'
  spec.description = <<-END_OF_DESCRIPTION
    ls for GitHub Repos

    Allows you to list the GitHub respositories owned by a user / organisation
    and some extra metadata about them.

    Not an official GitHub tool.
  END_OF_DESCRIPTION

  spec.required_ruby_version = '>= 2.6.0'

  spec.add_dependency             'github_api', '>= 0.18.2', '< 0.20.0'

  spec.add_development_dependency 'awesome_print', '~> 1.9.2'
  spec.add_development_dependency 'rake', '~> 13.0.0'
  spec.add_development_dependency 'rubocop', '~> 0.93.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.44.1'
end
