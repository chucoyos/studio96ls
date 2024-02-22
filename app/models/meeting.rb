class Meeting < ApplicationRecord
  belongs_to :service
  belongs_to :client
  belongs_to :stylist
end
