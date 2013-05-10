class RemoveSessionTimeFromPins < ActiveRecord::Migration
  def up
    remove_column :pins, :SessionTime
  end

  def down
    add_column :pins, :SessionTime, :decimal
  end
end
