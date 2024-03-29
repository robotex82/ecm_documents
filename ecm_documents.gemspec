$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ecm/documents/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ecm_documents"
  s.version     = Ecm::Documents::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/robotex82/ecm_documents"
  s.summary     = "ECM Module Template."
  s.description = "ECM Module Template."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency 'acts_as_markup'
  s.add_dependency 'friendly_id'
  s.add_dependency 'paperclip', '~> 2.7' 

  s.add_development_dependency "sqlite3"
  
  # Development Server  
  s.add_development_dependency "thin"  
  
  # Documentation
  s.add_development_dependency "yard"
  
  # Active admin
  s.add_development_dependency 'activeadmin'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'coffee-rails' 
  
  # Tests
  s.add_development_dependency 'capybara'    
  s.add_development_dependency 'rspec-rails', '~> 2.0'  
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'factory_girl_rails', '~> 1.0'
  
  # Fake Data Generation
  s.add_development_dependency 'ffaker'  
  s.add_development_dependency 'forgery', '0.5.0'
  
  # Test automation
  s.add_development_dependency 'rb-inotify', '~> 0.8.8'
  # s.add_development_dependency 'guard-rails' # See gemfile for a patched version, for engine support.
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-bundler'  
end
