class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :password
      t.string :address
      t.integer :order_count
      t.timestamps
    end
  end
end
