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
  
  def unread_count_for_user(user)
    unread_messages_for(user).length
  end
  
  def read!(user)
    unread_messages_for(user).delete_all
  end
  
  def unread_messages_for(user)
    user.unread_messages.where("message_id in (?)", messages)
  end
  
end
