class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :dsc
      t.string :url
      t.string :img

      t.timestamps
    end
  end
end
