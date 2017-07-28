class ChangeTimeToTime < ActiveRecord::Migration[5.1]
  def change
    change_column :appointments, :time, :time
  end
end
