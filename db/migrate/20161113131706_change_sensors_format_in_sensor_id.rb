class ChangeSensorsFormatInSensorId < ActiveRecord::Migration
  def change
  	change_column :sensors, :sensor_id, :string
  end
end
