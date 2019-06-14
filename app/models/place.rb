class Place < ApplicationRecord
	geocoded_by :address
	after_validation :geocode, if: :geocode
end
