begin
  @rspec_loaded = true
  require 'rubygems'
  require 'spork'

  Spork.prefork do
    ENV['RAILS_ENV'] ||= 'test'
    require File.expand_path('../../config/environment', __FILE__)
    require 'rspec/rails'
    require 'capybara/rspec'
    require 'capybara/rails'

    Capybara.server_boot_timeout = 50
    Capybara.default_wait_time = 5
    Capybara.server_port = 9872
    Capybara.app_host = "http://localhost:#{Capybara.server_port}"
    # Capybara.ignore_hidden_elements = true

    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end

    Capybara.javascript_driver = :chrome if ENV['BROWSER'] == "chrome"

    RSpec.configure do |c|
      c.filter_run :category => ENV["CATEGORY"].split(",") if ENV["CATEGORY"]
      c.mock_with :mocha
      #c.include Warden::Test::Helpers
      #c.after { Warden.test_reset! }
      c.include Factory::Syntax::Methods
      c.include Capybara::DSL
      
      c.before(:all) do
        DatabaseCleaner.strategy = :truncation
        DatabaseCleaner.orm      = "mongoid"
      end
    end
  end

  Spork.each_run do
    ActiveSupport::Dependencies.clear
    FactoryGirl.reload
    I18n.backend.reload!
  end if Spork.using_spork?

  require "bundler/setup"
  require 'tmpdir'
  require 'rbconfig'


  require 'logger'

  # ensure the translations get picked up for tests
  I18n.load_path += Dir[File.join(File.dirname(__FILE__), '..', 'config', 'locales', '*.{rb,yml}')]

end unless @rspec_loaded
