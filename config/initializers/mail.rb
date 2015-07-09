ActionMailer::Base.smtp_settings = {
    :address   => "smtp.mandrillapp.com",
    :port      => 587,
    :user_name => "zack@praxishomestx.com",
    :password  => "-O7qWNwUdKiolH5mBzjMdA",
    :domain    => 'praxishomestx.com'
  }
ActionMailer::Base.delivery_method = :smtp

MandrillMailer.configure do |config|
  config.api_key = "-O7qWNwUdKiolH5mBzjMdA"
end
