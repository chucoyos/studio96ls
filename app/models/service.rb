class Service < ApplicationRecord
  validates :name, length: { minimum: 3, message: "3 caracteres minimo"  }
  validates :price, numericality: { greater_than: 0, message: "debe ser mayor a 0" }
  validates :duration, numericality: { greater_than: 0, message: "debe ser mayor a 0" }
  has_many :meetings
  has_many :clients, through: :meetings
  has_many :stylists, through: :meetings
  default_scope { order(name: :asc) }
end
