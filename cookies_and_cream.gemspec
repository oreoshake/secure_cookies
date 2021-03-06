# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cookies_and_cream/version"

Gem::Specification.new do |spec|
  spec.name          = "cookies_and_cream"
  spec.version       = CookiesAndCream::VERSION
  spec.authors       = ["Neil Matatall"]
  spec.email         = ["oreoshake@users.noreply.github.com"]

  spec.summary       = %q{Automatically marks all cookies as secure, httponly, and samesite=lax}
  spec.description   = %q{Secure your cookies with an API for opting out}
  spec.homepage      = "https://github.com/oreoshake/cookies_and_cream"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/oreoshake/cookies_and_cream"
    spec.metadata["changelog_uri"] = "https://github.com/oreoshake/cookies_and_cream/CHANGELOG"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
