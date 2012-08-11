class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable
  attr_accessible :email, :password, :password_confirmation, :name, :avatar
  
  has_many :subscriptions
  has_many :message_threads, :through => :subscriptions
end
