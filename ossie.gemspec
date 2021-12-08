
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ossie/version"

Gem::Specification.new do |spec|
  spec.name          = "ossie"
  spec.version       = Ossie::VERSION
  spec.authors       = ["Ashish Bijlani"]
  spec.email         = ["oss@ossillate.com"]

  spec.summary       = %q{Ossie stops software supply chain attacks.}
  spec.description   = %q{Ossie reports "risky" RubyGems packages in your software supply chain.}
  spec.homepage      = "https://github.com/ossillate-inc/ossie-rubygems"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
