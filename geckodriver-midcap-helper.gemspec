# -*- encoding: utf-8 -*-
# frozen_string_literal: true

$:.push File.expand_path("../lib", __FILE__)
require "geckodriver/bin/version"

Gem::Specification.new do |s|
  s.name        = "geckodriver-midcap-helper"
  s.version     = Geckodriver::Bin::VERSION
  s.authors     = ["toomanyjoes", "Midcap Business Credit"]
  s.email       = ["toomanyjoes@gmail.com"]
  s.homepage    = "https://github.com/midcap/geckodriver-midcap-helper"
  s.summary     = "Easy installation and use of geckodriver."
  s.description = "Easy installation and use of geckodriver, that provides the HTTP API
described by the WebDriver protocol to communicate with Gecko browsers, such as Firefox."
  s.licenses    = ["MIT"]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec",   "~> 3.0"
  s.add_development_dependency "rake",    "~> 10.0"
  s.add_development_dependency "http",    "~> 3.0"

  s.add_runtime_dependency "archive-zip", "~> 0.7"
end
