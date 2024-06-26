class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.integer :rating
      t.integer :state
      t.references :customer, null:false, foreign_key:true
      t.references :book, null:false, foreign_key:true
      t.timestamps
    end
  end
end
