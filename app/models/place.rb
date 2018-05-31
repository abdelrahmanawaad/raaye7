class Place < ApplicationRecord


  validates :name , presence: true ,uniqueness: {case_sensitive: false}
  validates :longitude, uniqueness: { scope: :latitude }

end
