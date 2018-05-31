class User < ApplicationRecord
  has_many :trips
  has_many :pickups
  validates :full_name , presence: true ,uniqueness: {case_sensitive: false},
  length: {minimum: 6 }
  validates :phone_number , presence: true ,uniqueness: {case_sensitive: false}
  validates :role , presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
