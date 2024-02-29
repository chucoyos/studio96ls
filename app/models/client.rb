class Client < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, message: "Debe tener al menos 3 caracteres"  }
  validates :phone, presence: true, format: { with: /\A[0-9]{10}\z/, message: "Deben ser 10 digitos" }
  has_many :meetings, dependent: :destroy
end
