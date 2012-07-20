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
       Messages.email(@mailing).deliver
    end
    respond_with( @mailing )
  end
  
  def index
    @mailings = Mailing.all
    respond_with( @mailings )
  end


end
