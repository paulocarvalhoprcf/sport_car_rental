class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates :model, :manufacturer, :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_model_and_manufacturer,
    against: [ :model, :manufacturer],
    using: {
      tsearch: { prefix: true }
    }
end
