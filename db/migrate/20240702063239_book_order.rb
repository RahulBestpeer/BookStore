class BookOrder < ActiveRecord::Migration[7.1]
  def change
    create_table :books_orders, id: false do |t|
      t.belongs_to :book
      t.belongs_to :order
    end
  end
end
