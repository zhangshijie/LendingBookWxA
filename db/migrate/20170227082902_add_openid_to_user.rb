class AddOpenidToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :openid, :string
  end
end
