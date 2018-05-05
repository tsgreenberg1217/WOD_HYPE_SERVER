class CreateFish < ActiveRecord::Migration[5.1]
  def change
    create_table :fish do |t|
      t.string :species
      t.integer :trip_id
      t.integer :weight

      t.timestamps
    end
  end
end
