class CreateSuppliers < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
      t.string :name 
      t.string :email
      t.integer :number
      t.timestamps
    end
  end
end
