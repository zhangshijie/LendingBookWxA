class UsersController < ApplicationController
	skip_before_action :verify_authenticity_token, :only => [:create]


	def create
	  param! :name, String, required: true
	  param! :avatar, String, required: true

	  name = params[:name]
	  avatar = params[:avatar]

      @user = User.new(name: name, avatar: avatar)
	  # @user = User.new(name: 'aa', avatar: 'bb')
	  if !@user.save
        return render json: {error: 4000, msg: '创建用户失败'}, status: 400
	  end

	end

	def show
		param! :id, String, required: true

		id = params[:id]

		@user = User.find_by(id: id)

		if !@user
			return render json: {error: 4000, msg: '找不到该用户'}, status: 400
		end
	end


	private
	  def users_params
	    params.require(:user).permit(:name, :avatar)
	  end
end
