# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'the_boards/version'

Gem::Specification.new do |spec|
  spec.name          = "hot_songs"
  spec.version       = HotSongs::VERSION
  spec.authors       = ["ThisIsTyDell"]
  spec.email         = ["milleb94@gmail.com"]
  spec.executables   = ["the_boards"]
  spec.summary       = "The Hottest Songs of This Week"
  spec.description   = "A simple gem that pulls the hottest songs from the Billboard Charts Hot 100"
  spec.homepage      = "https://github.com/ThisIsTyDell/the-boards-cli-gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib", "lib/the_boards"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  
  spec.add_dependency "nokogiri"
end