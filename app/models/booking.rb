class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :starting_date, :ending_date, presence: true
  validates_datetime :starting_date, on_or_after: :today
  validates_datetime :ending_date, after: :starting_date
end
