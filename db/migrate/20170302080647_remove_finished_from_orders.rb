class RemoveFinishedFromOrders < ActiveRecord::Migration[5.0]
  def change
  	remove_column :orders, :Finished, :boolean
  end
end
