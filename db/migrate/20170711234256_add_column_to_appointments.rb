class AddColumnToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :hour, :string
    add_column :appointments, :minutes, :string
    add_column :appointments, :amorpm, :string
  end
end
