class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :title
      t.datetime :date
      t.integer :user_id
      t.string :location

      t.timestamps
    end
  end
end
