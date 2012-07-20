desc "Send mail"
task :send_mailing => :environment do
  mailing = Mailing.find(ENV["MAIL_ID"])
  Messages.email(mailing).deliver
end