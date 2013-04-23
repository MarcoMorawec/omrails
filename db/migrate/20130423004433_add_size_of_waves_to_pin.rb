class AddSizeOfWavesToPin < ActiveRecord::Migration
  def change
    add_column :pins, :SizeOfWaves, :integer
  end
end
