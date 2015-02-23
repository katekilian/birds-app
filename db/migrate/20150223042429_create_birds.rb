class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.integer :wingspan
      t.string :name
      t.string :color

      t.timestamps null: false
    end
  end
end
