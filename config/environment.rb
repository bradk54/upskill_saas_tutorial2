# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => 'app64631955@heroku.com',
  :password       => 'vbhk14fc8932',
  :domain         => 'hidden-chamber-55103.herokuapp.com',
  :enable_starttls_auto => true
}
ActionMailer::Base.delivery_method = :smtp