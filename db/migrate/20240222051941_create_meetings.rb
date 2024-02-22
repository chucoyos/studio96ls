class CreateMeetings < ActiveRecord::Migration[7.1]
  def change
    create_table :meetings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :service, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.references :stylist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
