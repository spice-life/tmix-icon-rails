# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tmix-icon-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "tmix-icon-rails"
  spec.version       = TmixIcon::VERSION
  spec.authors       = ["ItsukiChitose", "asonas", "unasuke"]
  spec.email         = ["hzw1258@gmail.com", "yusuke1994525@gmail.com"]

  spec.summary       = %q{Web font for tmix}
  spec.description   = %q{Web font for tmix}
  spec.homepage      = "https://github.com/spice-life/tmix-icon-rails"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
