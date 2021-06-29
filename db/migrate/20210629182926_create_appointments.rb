class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :date
      t.integer :doctors_id
      t.integer :patients_id
      t.timestamps
    end
  end
end
