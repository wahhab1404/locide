class Trip < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true, on: :create
  validates :description, presence: true, on: :create
  validates :places, presence: true, on: :create
  validates :points_of_interest, presence: true, on: :create
  validates :time, presence: true, on: :create
  validates :duration, presence: true, on: :create
end
