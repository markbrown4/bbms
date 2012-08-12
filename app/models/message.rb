class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :message_thread
  has_many :unread_messages
  attr_accessible :body, :user_id
  
  default_scope :order => 'created_at DESC'
  after_create :add_unreads
  
  private

  def add_unreads
    message_thread.users.each do |subscriber|
      unread_messages.create :user => subscriber
    end
  end
  
end
