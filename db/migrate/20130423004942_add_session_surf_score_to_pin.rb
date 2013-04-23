class AddSessionSurfScoreToPin < ActiveRecord::Migration
  def change
    add_column :pins, :SessionSurfScore, :decimal
  end
end
