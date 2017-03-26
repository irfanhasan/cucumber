# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cucumber/formatter/event_stream/version'

Gem::Specification.new do |spec|
  spec.name          = "cucumber-formatter-event_stream"
  spec.version       = Cucumber::Formatter::EventStream::VERSION
  spec.authors       = ["Matt Wynne"]
  spec.email         = ["matt@cucumber.io"]

  spec.summary       = %q{NDJSON event stream output of Cucumber events}
  spec.description   = %q{Streams events that describe your test run, as they happen, live, in real-time.}
  spec.homepage      = "https://cucumber.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "cucumber", "~> 3.0.0.pre.2"
  spec.add_development_dependency "json", "~> 1.8"
  spec.add_development_dependency "io-console", "~> 0.4.2"
end
