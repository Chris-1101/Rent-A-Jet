class Jet < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  mount_uploader :photo, PhotoUploader
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
