class Location < ActiveRecord::Base

  geocoded_by :my_location   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  def my_location
    "#{address}, #{city}, GA"
  end
end
