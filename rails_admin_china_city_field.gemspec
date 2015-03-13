$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_china_city_field/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_china_city_field"
  s.version     = RailsAdminChinaCityField::VERSION
  s.authors     = ["tangmonk"]
  s.email       = ["wytwyt02@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsAdminChinaCityField."
  s.description = "TODO: Description of RailsAdminChinaCityField."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.0"
end
