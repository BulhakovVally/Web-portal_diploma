class PhotoGallery < ActiveRecord::Migration
  def change
      create_table :photo_galleries do |t|
      t.string :name
      t.text :describtion
      t.text :pictures

      t.timestamps null: false
    end
  end
end
