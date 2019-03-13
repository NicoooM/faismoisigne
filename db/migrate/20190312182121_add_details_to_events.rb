class AddDetailsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :description, :text
    add_column :events, :num_rue, :integer
    add_column :events, :rue, :string
    add_column :events, :code_postal, :integer
    add_column :events, :ville, :string
  end
end
