class CreateNices < ActiveRecord::Migration[6.1]
  def change
    create_table :nices do |t|
      t.integer :customer_id, null: false
      t.integer :menu_id, null: false

      t.timestamps
      t.index [:customer_id, :menu_id], unique: true
    end
  end
end
