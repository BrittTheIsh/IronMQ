class Mailing < ActiveRecord::Base
  
  attr_accessible :to, :subject, :body
  
  validates :to,      :presence => true
  validates :body,    :presence => true
  validates :subject, :presence => true
  
  
end
