class Trip < ApplicationRecord
  belongs_to :user
  validates :number_of_seats , presence: true
  validates :departure_time, inclusion: { in: (Date.today..Date.today+5.years) }

end
