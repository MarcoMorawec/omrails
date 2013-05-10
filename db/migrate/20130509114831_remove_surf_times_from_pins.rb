class RemoveSurfTimesFromPins < ActiveRecord::Migration
  def up
    remove_column :pins, :SurfTime
  end

  def down
    add_column :pins, :SurfTime, :decimal
  end
end
