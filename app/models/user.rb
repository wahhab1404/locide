class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD
=======
         validates :first_name, presence: true, on: :create
         validates :last_name, presence: true, on: :create
         validates :city, presence: true, on: :create
         validates :country, presence: true, on: :create
         validates :phone, presence: true, on: :create
>>>>>>> master
end
