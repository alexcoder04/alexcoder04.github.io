# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name     = "alexcoder04.github.io"
  spec.version  = "1.0.0"
  spec.authors  = ["alexcoder04"]
  spec.email    = ["alexcoder04@protonmail.com"]

  spec.summary  = "My personal site"
  spec.homepage = "https://alexocoder04.github.io/"
  spec.license  = "GPL-3.0-or-later"

  spec.metadata["plugin_type"] = "site"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", ">= 3.5", "< 5.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "bundler"
end
