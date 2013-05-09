class RemoveNumberofSetWavesColumnFromPins < ActiveRecord::Migration
  def up
    remove_column :pins, :NumberOfSetWaves
  end

  def down
    add_column :pins, :NumberOfSetWaves, :integer
  end
end
