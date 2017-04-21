class AddTimestampToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :timestamp, :timestamp
  end
end
