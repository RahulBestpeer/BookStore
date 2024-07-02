class SuppliersController < ApplicationController
	def create
		supplier = Supplier.new(name:params[:name], email: params[:email], number: params[:number]);

		if supplier.save
			flash[:message] = "Supplier Added Successfully"
			redirect_to :controller=>"books" , :action=> "new"
		else
			flash[:message] = "something is wrong Author is not Added "
			redirect_to :controller=>"books" , :action=> "new"
		end
		# debugger
	end
end
