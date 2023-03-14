class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :body
      t.text :maps

      t.timestamps null: false
    end
  end
end
