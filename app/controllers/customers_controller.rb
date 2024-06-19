class CustomersController < ApplicationController
	
	def index
		@customer = Customer.find(session[:customer_id])
	end

	def login

	end	

	def customerLogin
		email = params[:email]
		password = params[:password]

		customer1 = Customer.find_by_email(email);

		if customer1 == nil 
			session[:message] = "customers not found"
			#debugger
			# render 'login'
			redirect_to :action=> 'login'

		elsif customer1.password == password
			session[:customer_id] = customer1.id
			redirect_to :action=>'index'
		else
			session[:message] = "customers not found"
			
			redirect_to :action=> 'login'
		end
	end

	def new

		@customer = Customer.new
	end
	def create
		
		@customer = Customer.new(customer_param)

		if @customer.save
			session[:customer_id] = @customer.id
			redirect_to :action=>'index'
		else	
			# debugger
			render :new, status: :unprocessable_entity
		end

	end


	private
	def customer_param
		{"first_name"=>params[:first_name], "last_name"=>params[:last_name], "email"=>params[:email], "phone"=>params[:phone], "password"=>params[:password], "address"=>params[:address]}
	end

end
