class CreateBriefs < ActiveRecord::Migration[5.0]
  def change
    create_table :briefs do |t|
      t.text :title

      t.timestamps
    end
  end
end
