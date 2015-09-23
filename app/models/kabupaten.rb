class Kabupaten < ActiveRecord::Base
	belongs_to :admin
	has_many :kecamatans
	has_many :penduduks
	geocoded_by :nama_kabupaten
  	after_validation :geocode
end
