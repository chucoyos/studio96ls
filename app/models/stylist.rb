class Stylist < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, message: "Debe tener al menos 3 caracteres"  }
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "Deben ser 10 digitos" }
end
