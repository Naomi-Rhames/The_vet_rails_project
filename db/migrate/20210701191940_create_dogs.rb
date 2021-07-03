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
      t.timestamps
    end
  end
end