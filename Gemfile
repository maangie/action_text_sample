source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '4.0.2'

gem 'rails', '~> 8.0'
gem 'sqlite3', '>= 2.0'
gem 'puma', '>= 6.0'
gem 'propshaft'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'dartsass-rails'
gem 'jbuilder'
gem 'image_processing', '~> 1.2'
gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: [:mri, :windows]
end

group :development do
  gem 'web-console'
  gem 'error_highlight', '>= 0.4', platforms: :ruby
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data', platforms: [:windows, :jruby]
