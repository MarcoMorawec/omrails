class AddSurfConditionsToPin < ActiveRecord::Migration
  def change
    add_column :pins, :SurfConditions, :string
  end
end
