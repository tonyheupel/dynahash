# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'dynahash'
  s.version     = '0.1'
  s.authors     = ['Tony Heupel']
  s.email       = ['tonyheupel@gmail.com']
  s.homepage    = "http://github.com/tonyheupel/dynahash"
  s.summary     = 'Reference Hash keys as if they were dot-notation properties'
  s.description = 'DynaHash changs the Hash class method_missing to see if it can map the property being accessed to a key in the Hash itself.  It saves typing and looks more like a regular object instance.'

  s.required_rubygems_version = '>= 1.3.7'
  s.rubyforge_project         = 'dynahash'
  
  s.files         = Dir.glob("lib/**/*") + %w(LICENSE)
  s.test_files    = Dir.glob("test/**/*")
  s.require_path  = 'lib'
end
