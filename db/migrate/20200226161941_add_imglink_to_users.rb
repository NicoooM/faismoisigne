class AddImglinkToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :imglink, :string
  end
end
