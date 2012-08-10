require 'digest/md5'
require 'open-uri'

module ApplicationHelper
  
  def gravatar_url(email)
    return image_path('avatar.png') if email.nil?
    "http://www.gravatar.com/avatar.php?gravatar_id=#{Digest::MD5.hexdigest(email)}&default=#{URI::encode(image_path('avatar.png'))}&size=27"
  end
  
end
