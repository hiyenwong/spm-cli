# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','spm','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'spm-cli'
  s.version = Spm::VERSION
  s.author = 'hyanwang'
  s.email = 'robinwong51@qq.com'
  s.homepage = 'http://about.me/kutanworld'
  s.platform = Gem::Platform::RUBY
  s.summary = 'shareing your scripts'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','spm.rdoc']
  s.rdoc_options << '--title' << 'spm' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'spm'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.12.2')
end
