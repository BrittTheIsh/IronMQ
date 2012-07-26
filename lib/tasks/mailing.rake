desc "Send mail"
task :send_mailing => :environment do
  @queue = IRON_MQ.queue("mailings")
  mailing = Mailing.find(@queue.get().body)
  Messages.email(mailing).deliver
end