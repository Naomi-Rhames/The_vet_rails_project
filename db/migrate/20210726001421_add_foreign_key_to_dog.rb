class AddForeignKeyToDog < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :dog,  index: true
    add_foreign_key :appointments, :dogs
  end
end
