class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.date :date_submitted
      t.integer :status
      t.decimal :subtotal
      t.decimal :shiping
      t.decimal :tax
      t.decimal :total
      t.references :customer, null: false, foreign_key: true
      t.timestamps
    end
  end
end
