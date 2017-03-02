class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token, :only => [:create]

	def create
	  param! :title, String, required: true
	  param! :url, String, required: true
      param! :dsc, String, required: true
	  param! :img, String, required: true

	  title = params[:title]
	  url = params[:url]
	  dsc = params[:dsc]
	  img = params[:img]

      @book = Book.new(title: title, url: url, dsc: dsc, img: img)

	  if !@book.save
        return render json: {error: 4000, msg: '创建书籍失败'}, status: 400
	  end

	end

	def show
		param! :id, String, required: true

		id = params[:id]

		@book = Book.find_by(id: id)

		if !@book
			return render json: {error: 4000, msg: '找不到该书'}, status: 400
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

	    result_books = []

	    result_books = Book.limit(page_size).offset(page*page_size).order("id desc")

	    return render json:{books: result_books}, status: 200
    end

end
