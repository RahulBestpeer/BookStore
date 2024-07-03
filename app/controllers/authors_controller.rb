class AuthorsController < ApplicationController
	def create
		author = Author.new(name: params[:name]);

		if author.save
			flash[:message] = "Author Added Successfully"
			redirect_to :controller=>"books" , :action=> "new"
		else
			flash[:message] = "something is wrong Author is not Added "
			redirect_to :controller=>"books" , :action=> "new"
		end
	end

end
