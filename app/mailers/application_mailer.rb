class ApplicationMailer < ActionMailer::Base
	default from: ENV["GMAIL_USERNAME"]
	default to: ENV["GMAIL_USERNAME"]
  layout 'mailer'
end
