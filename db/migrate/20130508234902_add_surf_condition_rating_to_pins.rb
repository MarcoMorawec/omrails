class AddSurfConditionRatingToPins < ActiveRecord::Migration
  def change
    add_column :pins, :SurfConditionRating, :integer
  end
end
