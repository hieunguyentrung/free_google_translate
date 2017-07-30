# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "free_google_translate/version"

Gem::Specification.new do |spec|
  spec.name          = "free_google_translate"
  spec.version       = FreeGoogleTranslate::VERSION
  spec.authors       = ["Hieu Nguyen"]
  spec.email         = ["nhieu92@gmail.com"]

  spec.summary       = %q{A free and unlimited API for Google Translate without authentication.}
  spec.description   = %q{A free and unlimited API for Google Translate without authentication or API key.}
  spec.homepage      = "https://github.com/nhieu92/free_google_translate"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
