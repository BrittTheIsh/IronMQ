class MailingsController < ApplicationController

  respond_to :html

  def new
    @mailing = Mailing.new
    respond_with( @mailing )
  end
  
  def create
    @mailing = Mailing.new( params[:mailing] )
    if @mailing.valid?
       @mailing.save
       @queue = IRON_MQ.queue("mailings")
       @queue.post(@mailing.id.to_s)
       system "rake send_mailing &"
    end
    respond_with( @mailing )
  end
  
  def show
    @mailing = Mailing.find params[:id]
    respond_with @mailing
  end
  
  def index
    @mailings = Mailing.all
    respond_with( @mailings )
  end


end
