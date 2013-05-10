class AddSessionTimeToPins < ActiveRecord::Migration
  def change
    add_column :pins, :SessionTime, :integer
  end
end
