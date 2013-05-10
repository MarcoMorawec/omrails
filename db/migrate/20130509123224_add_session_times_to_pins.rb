class AddSessionTimesToPins < ActiveRecord::Migration
  def change
    add_column :pins, :sessiontime, :integer
  end
end
