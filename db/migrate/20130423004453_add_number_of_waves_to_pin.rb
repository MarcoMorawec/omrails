class AddNumberOfWavesToPin < ActiveRecord::Migration
  def change
    add_column :pins, :NumberOfWaves, :integer
  end
end
