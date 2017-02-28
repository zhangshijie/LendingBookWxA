class AddFinishedToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :Finished, :boolean
  end
end
