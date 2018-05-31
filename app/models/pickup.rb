class Pickup < ApplicationRecord
  belongs_to :user
  validates :departure_time, inclusion: { in: (Date.today..Date.today+2.years) }
end
