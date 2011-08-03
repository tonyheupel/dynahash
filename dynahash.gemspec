# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'dynahash'
  s.version     = '0.3.1'
  s.authors     = ['Tony Heupel']
  s.email       = ['tonyheupel@gmail.com']
  s.homepage    = "http://github.com/tonyheupel/dynahash"
  s.summary     = 'Reference Hash keys as if they were dot-notation properties'
  s.description = 'Dynahash allows you to access Hash keys as if they were properties. For example:  h = {:first_name => "Tony", "LastName" => "Heupel", "**the gender**" => :male};  h.first_name;  # => "Tony"  h.last_name; # => "Heupel"  h.the_gender # => :male'

  s.required_rubygems_version = '>= 1.3.7'
  s.rubyforge_project         = 'dynahash'
  
  s.files         = Dir.glob("lib/**/*") + %w(LICENSE)
  s.test_files    = Dir.glob("test/**/*")
  s.require_path  = 'lib'
end
