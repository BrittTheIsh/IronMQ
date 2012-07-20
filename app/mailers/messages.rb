class Messages < ActionMailer::Base

  default from: "bmileshosky@engineyard.com"

  def email( mailing )
    @body = mailing.body
    mail(to: mailing.to, :subject => mailing.subject) 
  end
  
end
