class UserMailer < ActionMailer::Base
  default from: "from@example.com"

    def contact_form(email, name, message)
	  @message = message
	  mail(:from => email,
		:to => 'SECRET_EMAIL',
		:subject => "A new message from #{name}")
    end
end
