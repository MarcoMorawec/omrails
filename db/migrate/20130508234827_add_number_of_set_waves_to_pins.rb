class AddNumberOfSetWavesToPins < ActiveRecord::Migration
  def change
    add_column :pins, :NumberOfSetWaves, :integer
  end
end
