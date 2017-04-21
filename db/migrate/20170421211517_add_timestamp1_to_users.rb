class AddTimestamp1ToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :timestamps, :timestamp
  end
end
