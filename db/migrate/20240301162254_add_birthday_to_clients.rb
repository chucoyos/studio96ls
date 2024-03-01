class AddBirthdayToClients < ActiveRecord::Migration[7.1]
  def change
    add_column :clients, :birthday, :date
  end
end
