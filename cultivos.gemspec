require_relative 'lib/cultivos/version'

Gem::Specification.new do |spec|
  spec.name          = "cultivos"
  spec.version       = Cultivos::VERSION
  spec.authors       = ["Adal Díaz Fariña"]
  spec.email         = ["alu0101112251@ull.edu.es"]

  spec.summary       = %q{clase cultivo de la que heredan la clase hortaliza y fruta}
  spec.description   = %q{en esta práctica utilizamos bundler, la metodología de desarrollo dirigido por pruebas con rspec, guard, generación de documentación rdoc o yard, travis-ci, y coveralls }
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-2021/cultivos-AdalDiazFarina.git"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ULL-ESIT-LPP-2021/cultivos-AdalDiazFarina.git"
  spec.metadata["changelog_uri"] = "https://github.com/ULL-ESIT-LPP-2021/cultivos-AdalDiazFarina.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "coveralls"

end
