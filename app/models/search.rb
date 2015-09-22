class Search < ActiveRecord::Base

	def search_penduduks

		penduduks = Penduduk.all

		penduduks = penduduks.where(["kabupaten_id LIKE ?", kabupaten_id]) if kabupaten_id.present?

		penduduks = penduduks.where(["kecamatan_id LIKE ?", kecamatan_id]) if kecamatan_id.present?

		penduduks = penduduks.where(["kelurahan_id LIKE ?", kelurahan_id]) if kelurahan_id.present?

		penduduks = penduduks.where(["agama_id LIKE ?", agama_id]) if agama_id.present?

		penduduks = penduduks.where(["penghasilan_id LIKE ?", penghasilan_id]) if penghasilan_id.present?
		
		penduduks = penduduks.where(["pekerjaan_id LIKE ?", pekerjaan_id]) if pekerjaan_id.present?
		
		penduduks = penduduks.where(["pendidikan_id LIKE ?", pendidikan_id]) if pendidikan_id.present?
		
		penduduks = penduduks.where(["golongan_darah_id LIKE ?", golongan_darah_id]) if golongan_darah_id.present?
		return penduduks
	end
end
