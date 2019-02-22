class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :nom
      t.date :date
      t.time :heure
      t.integer :user_id
      t.string :lieu

      t.timestamps
    end
  end
end
