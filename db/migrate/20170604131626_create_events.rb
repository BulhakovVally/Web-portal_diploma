class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.datetime :finish_time
      t.string :location
      t.text :location_frame

      t.timestamps null: false
    end
  end
end
