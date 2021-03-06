
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nike_shoes/version"

Gem::Specification.new do |spec|
  spec.name          = "nike_shoes"
  spec.version       = NikeShoes::VERSION
  spec.authors       = ["Daksha Patel"]
  spec.email         = ["dakshapatel100@gmail.com"]

  spec.summary       = %q{CLI will display shoes from Nike Shoes website based on users choice.}
  spec.description   = %q{Data is scraped from Nike Shoes website: https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120 to provide a CLI for viewing details of shoes given the users input.}
  spec.homepage      = "https://github.com/dakshapatel/nike-shoes-cli-project."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["nike-shoes"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "gem-release"
  spec.add_development_dependency "rspec"
  spec.add_dependency "nokogiri"



end
