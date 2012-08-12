class UsersController < ApplicationController
  respond_to :json
  
  expose(:users) { User.where('id != ?', current_user.id) }
  expose(:user)
end
