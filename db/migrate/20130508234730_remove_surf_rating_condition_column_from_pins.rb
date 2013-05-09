class RemoveSurfRatingConditionColumnFromPins < ActiveRecord::Migration
  def up
    remove_column :pins, :SurfConditionRatingColumn
  end

  def down
    add_column :pins, :SurfConditionRatingColumn, :integer
  end
end
