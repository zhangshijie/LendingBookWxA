class BookController < ApplicationController
    
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
end
