class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.decimal :commission

      t.timestamps
    end
  end
end
