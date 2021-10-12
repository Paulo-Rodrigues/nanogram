source 'https://rubygems.org'

ruby '2.5.1'

gem 'rails', '~> 6.0.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'image_processing', '~> 1.2'
gem 'bootsnap', '>= 1.4.2', require: false

gem 'devise'
gem 'materialize-sass'
group :test do 
  gem 'shoulda-matchers'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'database_cleaner'
  gem 'guard'
  gem 'guard-rspec'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
