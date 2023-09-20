class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.integer :customer_id, null: false
      t.integer :genre_id, null: false
      t.text :menu_introduction
      t.string :menu_name, null:false
      t.integer :difficulty, null: false, default: 0
      t.timestamps
    end
  end
end
