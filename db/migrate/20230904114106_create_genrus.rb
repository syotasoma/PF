class CreateGenrus < ActiveRecord::Migration[6.1]
  def change
    create_table :genrus do |t|
      t.integer :genru_name, null: false

      t.timestamps
    end
  end
end
