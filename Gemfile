source 'http://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'json'
gem 'mongoid', '~> 2.1'
gem 'mongoid_spacial'

gem 'haml'
gem 'haml-rails'
gem 'kaminari'
gem 'faraday'


gem 'capistrano'
gem 'capistrano-ext'
gem 'rvm-capistrano'
gem 'torquebox-capistrano-support'

platforms :jruby do
  gem 'jruby-openssl'
  gem 'jruby-rack', '~> 1.1.9'
  gem 'torquebox-server', :group => :development
  gem 'torquebox-rake-support'
  gem 'torquebox-remote-deployer'
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyrhino'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development do
  gem 'rspec-rails'
  gem 'sinatra-reloader'
end

group :test do
  gem 'rspec-rails'
  gem 'rspec-instafail'
  gem 'mongoid-rspec'
  gem 'spork', '~> 0.9.0.rc'
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~>1.4.0'
  gem 'torquebox-no-op'
  gem 'selenium-webdriver', '>= 2.20.0'
  gem 'capybara'
  gem 'mocha'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'
