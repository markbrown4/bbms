class UsersController < ApplicationController
  respond_to :json
  
  expose(:users) { User.all }
  expose(:user)
end
