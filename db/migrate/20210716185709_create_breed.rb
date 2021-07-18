class CreateBreed < ActiveRecord::Migration[6.1]
  def change
    create_table :breeds do |t|
      t.string :name
      t.string :bred_for
      t.string :breed_group
      t.string :life_span
      t.string :temperament
      t.string :description
      t.string :origin
      t.string :image
    end
  end
end
