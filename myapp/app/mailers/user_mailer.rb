class UserMailer < ApplicationMailer
	def send_mail_confirmation(user,url)
		@user = user
		@url = url
	    mail(:from => 'abc@gmail.com', :to => "#{user.email}>", :subject => "Registration Confirmation") do |format|
          format.html { render 'user_mailer/user_login'}
      end
	end
end
