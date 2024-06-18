class CustomersController < ApplicationController
	
	def index

	end

	def login

	end	

	def customerLogin
		
		redirect_to :action=>'index'
	end

	def new
	
	end
	def create
		# debugger
		@customer = Customer.new(customer_param)

		if @customer.save
			redirect_to :action=>'index'
		else	
			render :new, status: :unprocessable_entity
		end

	end


	private
	def customer_param
		{"first_name"=>params[:first_name], "last_name"=>params[:last_name], "email"=>params[:email], "phone"=>params[:phone], "password"=>params[:password], "address"=>params[:address]}
	end

end
