class OrdersController < ApplicationController

	skip_before_action :verify_authenticity_token, :only => [:create]

	def create
	  param! :book_id, String, required: true
	  param! :user_id, String, required: true

	  book_id = params[:book_id]
	  user_id = params[:user_id]

      @order = Order.new(book_id: book_id, user_id: user_id, status: 0)

	  if !@order.save
        return render json: {error: 4000, msg: '借书失败'}, status: 400
	  end

	end

	def show
		param! :id, String, required: true

		id = params[:id]

		@order = Order.find_by(id: id)

		if !@order
			return render json: {error: 4000, msg: '找不到这次借书纪录'}, status: 400
		end
	end


    def index
		# param! :auth_token, String, required: true
	    param! :page, Integer, required: true

	    page = params[:page].to_i - 1
	    page_size = 10


        # 范围
	    if page < 0
	      return render json:{error: 4002, msg: '页码不能小于1！'}, stauts: 400
	    end

	    result_orders = []

	    result_orders = Order.limit(page_size).offset(page*page_size).order("id desc")

	    return render json:{orders: result_orders}, status: 200
    end

end
