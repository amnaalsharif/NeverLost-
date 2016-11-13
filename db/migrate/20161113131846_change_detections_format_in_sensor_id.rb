class ChangeDetectionsFormatInSensorId < ActiveRecord::Migration
  def change
  	  	change_column :detections, :sensor_id, :string

  end
end
