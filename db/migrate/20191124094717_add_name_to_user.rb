class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :city, :string, null: false
    add_column :users, :country, :string, null: false
    add_column :users, :phone, :string, unique: true, null: false
    add_column :users, :role, :string, :default => 'user'
    add_column :users, :about_me, :string
    add_column :users, :why_me, :string
  end
end
