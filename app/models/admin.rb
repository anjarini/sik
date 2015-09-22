class Admin < ActiveRecord::Base
	has_one :kabupatens
	has_one :kecamatans
	has_one :kelurahans
end
