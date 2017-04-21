class AddUserIdToBriefs < ActiveRecord::Migration[5.0]
  def change
    add_column :briefs, :user_id, :integer
  end
end
