class Kecamatan < ActiveRecord::Base
	belongs_to :admin
	belongs_to :kabupaten
	has_many :kelurahans
	has_many :penduduks
end
