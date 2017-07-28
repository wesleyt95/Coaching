class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.date :date
      t.time :time
      t.string :goal

      t.timestamps
    end
  end
end
