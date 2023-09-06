class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.integer :user_id, null: false
      t.integer :menu_id, null: false
      t.integer :menu_introduction, null: false
      t.string :genre, null: false

      t.timestamps
    end
  end
end
