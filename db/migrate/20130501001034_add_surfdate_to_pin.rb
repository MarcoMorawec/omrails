class AddSurfdateToPin < ActiveRecord::Migration
  def change
    add_column :pins, :surfdate, :date
  end
end
