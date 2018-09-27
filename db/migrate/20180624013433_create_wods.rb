class CreateWods < ActiveRecord::Migration[5.1]
  def change
    create_table :wods do |t|
      t.integer :cat
      t.integer :user_id
      t.string :name
      t.integer :rounds
      t.integer :reps
      t.integer :time
      t.bigint :date
      t.string :notes
      t.integer :weight
      t.timestamps
    end
  end
end
