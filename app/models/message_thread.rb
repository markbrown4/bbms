class MessageThread < ActiveRecord::Base
  has_many :messages
  has_many :subscriptions
  has_many :users, :through => :subscriptions
  belongs_to :user

  attr_accessible :subject, :user_id
  default_scope :order => 'created_at DESC'
  after_create :subscribe_owner

  def unsubscribe(user)
    users.delete(user)
  end
  
  def subscribe_owner
    users.push(user)
  end

end
