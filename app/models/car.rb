class Car < ApplicationRecord
  has_many :bookings

  validates :model, :manufacturer, :price, presence: true
end
