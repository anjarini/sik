class Penduduk < ActiveRecord::Base
	
belongs_to :golongan_darah
belongs_to :agama
belongs_to :kelurahan
belongs_to :kecamatan
belongs_to :kabupaten
belongs_to :pekerjaan
belongs_to :pendidikan
belongs_to :penghasilan
belongs_to :status_keluarga
validates :nik, :no_kk, :nama, :status_keluarga_id, :tanggal_lahir, :jenis_kelamin, :pekerjaan_id, :kewarganegaraan, :agama_id, :pendidikan_id, :kelurahan_id, :alamat, :status, { presence: true }
#validates :nik, :no_kk, :nama, :status_keluarga_id, :tanggal_lahir, :jenis_kelamin, :pekerjaan_id, :kewarganegaraan, :agama_id, :pendidikan_id, :kelurahan_id, :RT, :RW, :alamat, :status, format:{ with:/\A(?=.*[a-z])[a-z\d]+\Z/i }
validates :nik, uniqueness: true
validates :no_kk, :numericality => {:only_integer => true}

def self.search(search)
	if search
		where(["nama LIKE ?","%#{search}%"]) 
	
	else	
		all
	end	
end
 # scope :keyword, -> (keyword) { where("name like ?", "#{keyword}%")}
 # scope :agama, -> (agama) { where agama_id: agama }
 # scope :penghasilan, -> (penghasilan) { where penghasilan_id: penghasilan }
 # scope :pekerjaan, -> (pekerjaan) { where pekerjaan_id: pekerjaan }
 # scope :kelurahan, -> (kelurahan) { where kelurahan_id: kelurahan }

def after_save
  self.update_counter_cache
end

def after_destroy
  self.update_counter_cache
end

def update_counter_cache
  self.kelurahan.penduduks_counter = Penduduk.count( :conditions => ["status != ? AND kelurahan_id = ?", 1, self.kelurahan_id])
  self.save
end

	def search_penduduks

		penduduks = Penduduk.all

		penduduks = penduduks.where(["kabupaten_id LIKE ?", kabupaten_id]) if kabupaten_id.present?

		penduduks = penduduks.where(["kecamatan_id LIKE ?", kecamatan_id]) if kecamatan_id.present?

		penduduks = penduduks.where(["kelurahan_id LIKE ?", kelurahan_id]) if kelurahan_id.present?

		return penduduks
	end


end
