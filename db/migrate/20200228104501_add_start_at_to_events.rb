class AddStartAtToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :start_at, :datetime
  end
end
