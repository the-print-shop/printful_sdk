# frozen_string_literal: true

require_relative "lib/printful_sdk/version"

Gem::Specification.new do |spec|
  spec.name          = "printful_sdk"
  spec.version       = PrintfulSdk::VERSION
  spec.authors       = ["bran.liang"]
  spec.email         = ["bran.liang@shopify.com"]

  spec.summary       = "Ruby SDK to interact with Printful API"
  spec.description   = "Simple and fun"
  spec.homepage      = "https://github.com/the-print-shop/printful_sdk"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/the-print-shop/printful_sdk"
  spec.metadata["changelog_uri"] = "https://github.com/the-print-shop/printful_sdk/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    %x(git ls-files -z).split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency("dry-struct", "~> 1.4")
  spec.add_dependency("dry-types", "~> 1.5")
  spec.add_dependency("httparty", "~> 0.2")

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
