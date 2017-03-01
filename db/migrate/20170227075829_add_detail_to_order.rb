class AddDetailToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :use_id, :string
    add_column :orders, :book_id, :string
  end
end
