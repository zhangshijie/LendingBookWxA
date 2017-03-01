class UsersController < ApplicationController

	def create
	  # param! :name, String, required: true
	  # param! :url, String, required: true

	  # name = params[:name]
	  # avatar = params[:url]

   #    @user = User.new(name: name, avatar: avatar)

	  # if !@user.save
   #      return render json: {error: 4000, msg: '创建用户失败'}, status: 400
	  # end

       @user = User.new(name: '', avatar: '')
	end

	def show
		param! :id, String, required: true

		id = params[:id]

		@user = User.find_by(id: id)

		if !@user
			return render json: {error: 4000, msg: '找不到该用户'}, status: 400
		end
	end


end
