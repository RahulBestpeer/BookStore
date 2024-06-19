class Customer < ApplicationRecord
	validates :first_name, presence:true, format: { with: /\A[a-zA-Z]+\z/,
		message: "only allows letters" }

	validates :last_name, presence:true, format: { with: /\A[a-zA-Z]+\z/,
		message: "only allows letters" }

	validates :email, presence:true, format: {with: /\A[A-Za-z0-9\._%+\-]+@[A-Za-z0-9\.\-]+\.[A-Za-z]{2,}\z/, message:"please enter valid email"}, uniqueness:true

	validates :phone, presence:true, length: {is:10}, uniqueness:true

	validates :password, presence:true, length:{in:4..8}

	validates :address, presence:true

end
