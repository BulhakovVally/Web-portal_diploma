class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :poster

      t.timestamps null: false
    end
  end
end
