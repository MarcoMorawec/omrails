class AddSurfTimeToPins < ActiveRecord::Migration
  def change
    add_column :pins, :SurfTime, :decimal
  end
end
