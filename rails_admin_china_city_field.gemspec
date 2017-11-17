$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_china_city_field/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_china_city_field"
  s.version     = RailsAdminChinaCityField::VERSION
  s.authors     = ["tangmonk"]
  s.email       = ["wytwyt02@gmail.com"]
  s.homepage    = ""
  s.summary     = "Summary of RailsAdminChinaCityField."
  s.description = "Description of RailsAdminChinaCityField."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

end
