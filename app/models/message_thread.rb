class MessageThread < ActiveRecord::Base
  has_many :messages
  has_many :subscriptions
  has_many :users, :through => :subscriptions

  attr_accessible :subject
  default_scope :order => 'created_at DESC'

  def avatar
    users.second.avatar
  end

end
