class User < ApplicationRecord
  # has_secure_token :auth_token

  def create
     @user = User.new("name": params[:name],"avatar": params[:avatar])
     @user.save
  end
end
