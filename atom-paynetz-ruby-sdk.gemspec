# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paynetz/api/version'

Gem::Specification.new do |spec|
  spec.name          = "atom-paynetz-ruby-sdk"
  spec.version       = Atom::Paynetz::Ruby::Sdk::VERSION
  spec.authors       = ["Ankur Gupta"]
  spec.email         = ["ankur@moorem.com"]
  spec.summary       = %q{Online payment gateway solution in India with Atom}
  spec.description   = %q{Atom is best service provider in India for secure online payment. Atom accpets debit & credit card, cash/prepaid cards and IMPS.}
  spec.homepage      = "https://github.com/moorem/atom-paynetz-ruby-sdk"
  spec.license       = "MIT"
  
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "minitest", "~> 5.6"
  spec.add_development_dependency "vcr", "~> 2.9"
  spec.add_development_dependency "webmock", "~> 1.21"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
