class UnreadMessage < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
  attr_accessible :user, :message
  
  validates :user, :presence => true
  validates :message, :presence => true
end
