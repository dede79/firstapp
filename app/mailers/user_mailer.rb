class UserMailer < ActionMailer::Base
  default from: "from@example.com"

	  def contact_form
	  @name = params[:name]
	  @email = params[:email]
	  @message = params[:message]
	  UserMailer.contact_form(@email, @name, @message).deliver
	end
end
