# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "windows-pr"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel J. Berger", "Park Heesob"]
  s.date = "2011-08-25"
  s.description = "    The windows-pr library is a collection of Windows functions and constants\n    pre-defined for you using the windows-api library. It also autogenerates\n    explicit ANSI and Wide character versions of those functions, as well as\n    constants that can be used as methods, e.g. CloseHandle() instead of\n    CloseHandle.call().\n"
  s.email = "djberg96@gmail.com"
  s.extra_rdoc_files = ["MANIFEST", "README", "CHANGES", "doc/conversion_guide.txt"]
  s.files = ["MANIFEST", "README", "CHANGES", "doc/conversion_guide.txt"]
  s.homepage = "http://www.rubyforge.org/projects/win32utils"
  s.licenses = ["Artistic 2.0"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "win32utils"
  s.rubygems_version = "1.8.11"
  s.summary = "Windows functions and constants bundled via Win32::API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<windows-api>, [">= 0.3.0"])
      s.add_runtime_dependency(%q<win32-api>, [">= 1.4.5"])
    else
      s.add_dependency(%q<windows-api>, [">= 0.3.0"])
      s.add_dependency(%q<win32-api>, [">= 1.4.5"])
    end
  else
    s.add_dependency(%q<windows-api>, [">= 0.3.0"])
    s.add_dependency(%q<win32-api>, [">= 1.4.5"])
  end
end
