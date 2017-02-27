class AddOpenidToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :OpenID, :String
  end
end
