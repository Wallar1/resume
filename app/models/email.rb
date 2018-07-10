class Email < ApplicationRecord
	attr_accessor :name, :from, :subject, :message
	before_create :send_email

	def send_email
		CustomMailer.send_email(self).deliver_now
	end
end
