class CustomMailer < ApplicationMailer
	def send_email email
		@message = email.message
		@name = email.name
		@from = email.from
		@subject = email.subject
  	mail(subject: @subject)
  end
end