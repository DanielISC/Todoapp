Rails.application.configure do
config.action_mailer.delivery_method = :smtp
 config.action_mailer.smtp_settings = {
 :authentication => :plain,
 :address => ENV["TodoMHapp@gmail.com"],
 :port => ENV["587"],
 :domain =>ENV["smtp-relay.gmail.com"],
 :user_name => ENV["TodoMHapp@gmail.com"],
 :password => ENV["Todo123456"]
 }
end
