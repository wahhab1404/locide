class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :trips
  has_many :users, through: :bookings 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :first_name, presence: true, on: :create
         validates :last_name, presence: true, on: :create
         validates :city, presence: true, on: :create
         validates :country, presence: true, on: :create
         validates :phone, presence: true, on: :create

         def update_status
          self.update(role:'guide') if self.bookings.pluck(:role).include? 'user'
        end
end
