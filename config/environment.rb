# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.1.0' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.
  # See Rails::Configuration for more options.

  # Skip frameworks you're not going to use. To use Rails without a database
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Specify gems that this application depends on. 
  # They can then be installed with "rake gems:install" on new installations.
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "aws-s3", :lib => "aws/s3"

  # Only load the plugins named here, in the order given. By default, all plugins 
  # in vendor/plugins are loaded in alphabetical order.
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Force all environments to use the same logger level
  # (by default production uses :info, the others :debug)
  # config.log_level = :debug

  # Make Time.zone default to the specified zone, and make Active Record store time values
  # in the database in UTC, and return them converted to the specified local zone.
  # Run "rake -D time" for a list of tasks for finding time zone names. Uncomment to use default local time.
  config.time_zone = 'UTC'

  # Your secret key for verifying cookie session data integrity.
  # If you change this key, all old sessions will become invalid!
  # Make sure the secret is at least 30 characters and all random, 
  # no regular words or you'll be exposed to dictionary attacks.
  config.action_controller.session = {
    :session_key => '_plush_session',
    :secret      => 'dc09225ed527c517365f1e9a4203a18111a62a04b0f2f9da03b2f4c56fa47d895803bfbd91d56db99ae1c77b0d0a1a55c67eda8fe7653f7dfe8f02924f77a0a2'
  }

  # Use the database for sessions instead of the cookie-based default,
  # which shouldn't be used to store highly confidential information
  # (create the session table with "rake db:sessions:create")
  # config.action_controller.session_store = :active_record_store

  # Use SQL instead of Active Record's schema dumper when creating the test database.
  # This is necessary if your schema can't be completely dumped by the schema dumper,
  # like if you have constraints or database-specific column types
  # config.active_record.schema_format = :sql
  config.active_record.observers = :order_observer
   
   
  config.load_paths << "#{RAILS_ROOT}/app/models/orders"
  config.load_paths << "#{RAILS_ROOT}/app/controllers/orders"
  config.load_paths << "#{RAILS_ROOT}/app/views/orders"
  # config.load_paths << "#{RAILS_ROOT}/app/views/orders"

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector
  config.action_controller.page_cache_directory = RAILS_ROOT + "/public/cache/"
  
  # ACTION MAILER ENVIRONMENT
  # -----------------------------------------
  # config.action_mailer.smtp_settings = {
  #   :address        => "smtp.gmail.com",
  #   :port           => 587,
  #   :domain         => "monkey@domain.com",
  #   :authentication => :plain,
  #   :user_name      => "monkey@domain.com",
  #   :password       => "banana" 
  # }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
       :address        => "mail.plush.dreamhosters.com",
       :port           => 587,
       :domain         => "plush.dreamhosters.com",
       :authentication => :login,
       :user_name      => "plushadmin",
       :password       => "nikita"
  }
  # require 'smtp_tls'
  # 
  # config.action_mailer.smtp_settings = {
  #   :address => "smtp.gmail.com",
  #   :port => "587",
  #   :domain => "localhost.plush.dreamhosters.com",
  #   :authentication => :plain,
  #   :user_name => "plushadmin",
  #   :password => "nikita"
  # }
  # ActionMailer::Base.perform_deliveries = true
  # ActionMailer::Base.default_charset = "utf-8"
  
  # ActionMailer::Base.delivery_method = :smtp
  # ActionMailer::Base.smtp_settings  = {
  #   :address  => "plush.dreamhosters.com",
  #   :port   => 25,
  #   :domain   => "www.plush.ca"
  # }
  # 
  # ActionMailer::Base.perform_deliveries = true
  # ActionMailer::Base.raise_delivery_errors = true
  # ActionMailer::Base.default_charset = "utf-8"
end
