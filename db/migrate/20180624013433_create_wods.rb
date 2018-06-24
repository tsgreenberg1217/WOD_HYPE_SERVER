class CreateWods < ActiveRecord::Migration[5.1]
  def change
    create_table :wods do |t|
      t.string :name
      t.integer :rounds
      t.integer :reps
      t.time :time
      t.datetime :date
      t.string :notes

      t.timestamps
    end
  end
end
