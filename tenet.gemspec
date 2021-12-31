# frozen_string_literal: true

require_relative "lib/tenet/version"

Gem::Specification.new do |spec|
  spec.name = "tenet"
  spec.version = Tenet::VERSION
  spec.authors = ["moekidev"]
  spec.email = ["me@moeki.dev"]
  spec.license = "MIT"

  spec.summary = "Tenet restores HTML elements views to Array of Hash data."
  spec.description = <<~EOF
    Tenet restores HTML elements views to Array of Hash data.
    It provides a API for mapping to HTML scraping rules and
    data attributes.
  EOF
  spec.homepage = "https://github.com/moekidev/tenet"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/moekidev/tenet"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.0"
end
