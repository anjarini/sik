class Kabupaten < ActiveRecord::Base
	belongs_to :admin
	has_many :kecamatans
	has_many :penduduks
	
end
