class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :likes
      t.integer :pano_id

      t.timestamps
    end
  end
end
