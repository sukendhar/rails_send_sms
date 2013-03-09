class HomeController < ApplicationController
	include SMSFu

  	def index
  		sms_fu = SMSFu::Client.configure(:delivery => :action_mailer)

  		sms_fu.deliver("9876543210","Airtel","Hello World")
  	end
end
