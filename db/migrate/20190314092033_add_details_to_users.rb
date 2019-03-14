class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :description, :string
    add_column :users, :lieu, :string
    add_column :users, :bio, :text
  end
end
