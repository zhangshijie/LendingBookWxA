class RemoveUseIdFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :use_id, :string
  end
end
