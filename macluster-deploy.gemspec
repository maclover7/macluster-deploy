# coding: utf-8

info = "Simple deploy script to deploy an application to @maclover7's
Traefik-powered web cluster."

Gem::Specification.new do |spec|
  spec.name          = 'macluster-deploy'
  spec.version       = ''
  spec.authors       = 'Jon Moss'
  spec.email         = 'me@jonathanmoss.me'

  spec.summary       = info
  spec.description   = info
  spec.homepage      = 'https://github.com/maclover7/macluster-deploy'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
