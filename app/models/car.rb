class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates :model, :manufacturer, :price, presence: true
end
