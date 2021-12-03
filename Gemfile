source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"
gem "rails", "~> 7.0.0.alpha2"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails", ">= 0.3.4"
gem "turbo-rails", ">= 0.7.11"
gem "stimulus-rails", ">= 0.4.0"
gem "jbuilder", "~> 2.7"
gem "redis", "~> 4.0"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", ">= 1.4.4", require: false

# Use Sass to process CSS
gem "sassc-rails", "~> 2.1"
gem 'font-awesome-sass', '~> 5.15.1'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'pry', '~> 0.13.1'
end

group :development do
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "rspec-rails"
  gem 'rails-controller-testing'
  gem "factory_bot_rails"
  gem "database_cleaner"
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem 'axe-core-rspec'
end
