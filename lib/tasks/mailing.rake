desc "Send mail"
task :send_mailing => :environment do
  @queue = IRON_MQ.queue("mailings")
  mailing = Mailing.find(@queue.get)
  Messages.email(mailing).deliver
end