class Booking < ApplicationRecord
  belongs_to :trip
  has_many :users
end
