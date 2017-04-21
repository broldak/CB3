class RemoveTimestampFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :timestamp
  end
end
