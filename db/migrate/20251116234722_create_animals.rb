class CreateAnimals < ActiveRecord::Migration[8.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.string :breed
      t.integer :age
      t.date :intake_date
      t.boolean :adopted
      t.text :notes

      t.timestamps
    end
  end
end
