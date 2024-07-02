class BooksController < ApplicationController
	def new 
		 @book = Book.new
	end
	def create
		@book = Book.new(book_param)

		if @book.save
			flash[:message] = "Book Added Successfully"
			redirect_to :action=>"new"
		else 
			flash[:message] = "something is wrong! Book is not"

		 	render "new", status: :unprocessable_entity
		end
	end



	private

	def book_param
		params.permit(:id, :title, :year_publication, :price, :isbn, :out_of_print, :supplier_id, :author_id);
	end
end
