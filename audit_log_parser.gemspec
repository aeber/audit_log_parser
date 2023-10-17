
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'audit_log_parser/version'

Gem::Specification.new do |spec|
  spec.name          = 'dgi_audit_log_parser'
  spec.version       = AuditLogParser::VERSION
  spec.authors       = ['winebarrel', 'aeber']
  spec.email         = ['']

  spec.summary       = %q{It is a library for parsing.}
  spec.description   = %q{It is a library for parsing.}
  spec.homepage      = 'https://github.com/dg-i/audit_log_parser'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
