class CreateAddTimeToAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :add_time_to_appointments do |t|
      t.time :time

      t.timestamps
    end
  end
end
