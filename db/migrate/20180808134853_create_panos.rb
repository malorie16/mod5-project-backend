class CreatePanos < ActiveRecord::Migration[5.2]
  def change
    create_table :panos do |t|
      t.string :caption
      t.integer :user_id
      t.string :pano_url

      t.timestamps
    end
  end
end
