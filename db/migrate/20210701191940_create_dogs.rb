class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.integer :dog_id
      t.string :name
      t.string :life_span
      t.string :temperament
      t.string :description
      t.string :origin
      t.string :image
      t.integer :phone_number
      t.string :owners_name
      t.string :symptoms
      t.string :dog_breed
      t.timestamps
    end
  end
end