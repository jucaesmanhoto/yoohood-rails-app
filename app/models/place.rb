class Place < ApplicationRecord
  has_many :events, dependent: :destroy

  validates :place_name, :address, :latitude, :longitude, :city, :country, :zip_code, presence: true
end
