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
       system "rake send_mailing MAIL_ID=#{@mailing.id} &"
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
