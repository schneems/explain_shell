# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "explain_shell"
  gem.version       = "1.0.2"
  gem.authors       = ["Richard Schneeman"]
  gem.email         = ["richard.schneeman+rubygems@gmail.com"]
  gem.description   = %q{ Bash interface to http://explainshell.com/ }
  gem.summary       = %q{ explain your bash commands with ease }
  gem.homepage      = "https://github.com/schneems/explain_shell"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  # gem.require_paths = ["lib"]
end
