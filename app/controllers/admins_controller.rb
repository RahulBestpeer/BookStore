class AdminsController < ApplicationController
	def login
		render "login"
	end

	def adminLogin
		email = "rapatel@bestpeers.com"
		password = "Rahul@2001"
		
		#customer1 = Customer.find_by_email(email);
		email1 = params[:email]
		password1 = params[:password]
		if (email1 == email1 && password1 == password)
			#session[:admin_id] = customer1.id
			redirect_to :action=>'index'
		else
			session[:message] = "Admin not found"
			
			redirect_to :action=> 'login'
		end
	end


	def new
		@book = Book.new
		@author = Author.all
		@supllier = Supplier.all
	end

	def createBook

	end
end
