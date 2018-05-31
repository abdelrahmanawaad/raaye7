class Trip < ApplicationRecord
  belongs_to :user
  has_one :place, as: :source
  has_one :place, as: :destination


  validates :number_of_seats , presence: true
  validates :departure_time, inclusion: { in: (Date.today..Date.today+5.years) }

end
