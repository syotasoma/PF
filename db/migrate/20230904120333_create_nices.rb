class CreateNices < ActiveRecord::Migration[6.1]
  def change
    create_table :nices do |t|
      t.integer :user_id, null: false
      t.integer :menu_id, null: false

      t.timestamps
    end
  end
end
