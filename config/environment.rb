# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Dailycheck::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'saiprashanth93',
  :password => 'prashanth320',
  :domain => 'dailycheck@sendgrid.me',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

