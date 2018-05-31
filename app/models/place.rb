class Place < ApplicationRecord
  belongs_to :trip
  validates :name , presence: true ,uniqueness: {case_sensitive: false}
  validates :longitude, uniqueness: { scope: :latitude }

end
