# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "windows-api"
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel J. Berger"]
  s.date = "2009-10-17"
  s.description = "      The windows-api library provides features over and above the basic\n      interface provided by the win32-api library. Features included automatic\n      constant generation, automatic defintion of ANSI and Unicode methods,\n      special handling of functions that return a boolean value, and the\n      ability to use native Windows type declarations.\n"
  s.email = "djberg96@gmail.com"
  s.extra_rdoc_files = ["README", "CHANGES", "MANIFEST"]
  s.files = ["README", "CHANGES", "MANIFEST"]
  s.homepage = "http://www.rubyforge.org/projects/win32utils"
  s.licenses = ["Artistic 2.0"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "win32utils"
  s.rubygems_version = "1.8.11"
  s.summary = "An easier way to create methods using Win32::API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<win32-api>, [">= 1.4.5"])
    else
      s.add_dependency(%q<win32-api>, [">= 1.4.5"])
    end
  else
    s.add_dependency(%q<win32-api>, [">= 1.4.5"])
  end
end
