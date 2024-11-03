class AddDetailsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :Phone, :string
    add_column :users, :name, :string
    add_column :users, :age, :string
  end
end
