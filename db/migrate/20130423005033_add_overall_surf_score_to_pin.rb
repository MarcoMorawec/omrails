class AddOverallSurfScoreToPin < ActiveRecord::Migration
  def change
    add_column :pins, :OverallSurfScore, :decimal
  end
end
