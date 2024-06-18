class CreateAdmins < ActiveRecord::Migration[7.1]
  def change
    create_table :admins do |t|
      t.string :name 
      t.string :email
      t.string :password
      t.string :number
      
      t.timestamps
    end
  end
end
