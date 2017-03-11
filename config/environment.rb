# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
  :port           => ENV['587'],
  :address        => ENV['smtp.mailgun.org'],
  :user_name      => ENV['postmaster@app09efe268357d469f84a57cf187edb897.mailgun.org'],
  :password       => ENV['4287588650dce5e294e3c6312fd741ae'],
  :domain         => 'app09efe268357d469f84a57cf187edb897.mailgun.org',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp