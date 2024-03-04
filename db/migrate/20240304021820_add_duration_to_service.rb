class AddDurationToService < ActiveRecord::Migration[7.1]
  def change
    add_column :services, :duration, :float
  end
end
