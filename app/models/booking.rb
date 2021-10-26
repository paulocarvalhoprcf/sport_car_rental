class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :starting_date, :ending_date, presence: true
end
