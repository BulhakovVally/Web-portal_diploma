class CreateVideoGalleries < ActiveRecord::Migration
  def change
    create_table :video_galleries do |t|
      t.string :name
      t.text :describtion
      t.attachment :attachment

      t.timestamps null: false
    end
  end
end
