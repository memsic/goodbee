class AddZipToUsers < ActiveRecord::Migration
  def change
    add_column :users, :zip, :string
    add_index :users, :zip
  end
end
