class Kelurahan < ActiveRecord::Base
  # extend Geocoder::Model::ActiveRecord
  has_many :achievement
  belongs_to :admin
  belongs_to :kecamatan
  has_many :penduduks, :counter_cache => true
  geocoded_by :alamat_kel
  after_validation :geocode

end
