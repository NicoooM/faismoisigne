class AddConctactToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :user_contact, :string
  end
end
