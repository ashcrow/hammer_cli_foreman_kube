$:.unshift File.expand_path("../lib", __FILE__)
require "hammer_cli_foreman_kube/version"

Gem::Specification.new do |s|

  s.name = "hammer_cli_foreman_kube"
  s.authors = ["Me"]
  s.version = HammerCLIForemanKube.version.dup
  s.platform = Gem::Platform::RUBY
  s.summary = %q{Kube cluster for Hammer}

  s.files = Dir['lib/**/*.rb']
  s.require_paths = ["lib"]

  s.add_dependency 'hammer_cli', '>= 0.0.6'
end
