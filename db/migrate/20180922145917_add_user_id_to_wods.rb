class AddUserIdToWods < ActiveRecord::Migration[5.1]
  def change
    add_column :wods, :user_id, :integer
  end
end
