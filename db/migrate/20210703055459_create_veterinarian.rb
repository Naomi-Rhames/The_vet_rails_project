class CreateVeterinarian < ActiveRecord::Migration[6.1]
  def change
    create_table :veterinarians do |t|
      t.string :name
      t.string :specialty
      t.timestamps
    end
  end
end