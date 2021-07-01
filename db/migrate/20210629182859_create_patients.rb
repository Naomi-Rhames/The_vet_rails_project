class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :symptoms
      t.string :dog_breed
      t.string :image_url
      t.integer :phone_number
    end
  end
end
