class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :causes, [:user_id, :created_at]
  end
end
