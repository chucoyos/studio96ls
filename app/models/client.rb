class Client < ApplicationRecord
  validates :name, presence: true
  validates :phone, presence: true, format: { with: /\A[0-9]{10}\z/ }
end
