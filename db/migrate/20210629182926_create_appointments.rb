class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :symptoms
      t.string :agenda
      t.datetime :date
      t.integer :dog_id
      t.integer :veterinarian_id
      t.timestamps
    end
  end
end 