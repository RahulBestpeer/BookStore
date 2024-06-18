class Customer < ApplicationRecord
	validates :first_name, presence:true, format: { with: /\A[a-zA-Z]+\z/,
		message: "only allows letters" }
end
