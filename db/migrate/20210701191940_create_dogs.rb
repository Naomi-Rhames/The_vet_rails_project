class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.integer :user_id
      t.string :name
      t.string :age
      t.string :temperament
      t.string :description
      t.string :origin
      t.string :phone_number
      t.string :owners_name
      t.string :symptoms
      t.string :dog_breed
      t.timestamps
    end
  end
end