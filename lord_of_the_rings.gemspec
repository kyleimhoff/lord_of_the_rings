require_relative 'lib/lord_of_the_rings/version'

Gem::Specification.new do |spec|
  spec.name          = "lord_of_the_rings"
  spec.version       = LordOfTheRings::VERSION
  spec.authors       = "Kyle Imhoff"
  spec.email         = imhoff.kyle@gmail.com

  spec.summary       = %q{Gem that utilizes the LOTR API to give you a list of books or movies.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = lord_of_the_rings
  spec.require_paths = ["lib"]
end
