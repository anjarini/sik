class SearchesController < ApplicationController
  layout 'opencity'
  require 'gchart'
	def update_artists
	# updates artists and songs based on genre selected
	genre = Kabupaten.find(params[:kabupaten_id])
	# map to name and id for use in our options_for_select
	@artists = genre.kecamatans.map{|a| [a.nama_kecamatan, a.id]}.insert(0, "Pilih Kecamatan")
	end

	def update_songs
	# updates songs based on artist selected
	artist = Kecamatan.find(params[:kecamatan_id])
	@songs = artist.kelurahans.map{|s| [s.nama_kelurahan, s.id]}.insert(0, "Pilih Kelurahan")
	end

	def new
		@search = Search.new
		
		# kabupaten_uniq = Penduduk.uniq.pluck(:kabupaten_id)
		# @kabupatens = Kabupaten.where("id IN(?)",kabupaten_uniq).map{|a| [a.nama_kabupaten, a.id]}
		
		# kecamatan_uniq = Penduduk.uniq.pluck(:kecamatan_id)
		# @kecamatans = Kecamatan.where("id IN(?)",kecamatan_uniq).map{|a| [a.nama_kecamatan, a.id]}.unshift(["-Please select-",0])
		
		# kelurahan_uniq = Penduduk.uniq.pluck(:kelurahan_id)
		# @kelurahans = Kelurahan.where("id IN(?)",kelurahan_uniq).map{|a| [a.nama_kelurahan, a.id]}.unshift(["-Please select-",0])

		@genres = Kabupaten.all
		@artists = Kecamatan.all
		@songs = Kelurahan.all


		# kelurahan_uniq = Penduduk.uniq.pluck(:kelurahan_id)
		# @kelurahan = Kelurahan.where("id IN(?)",kelurahan_uniq).map{|a| [a.nama_kelurahan, a.id]}.unshift(["-Please select-",0])

		agama_uniq = Penduduk.uniq.pluck(:agama_id)
		@agama = Agama.where("id IN(?)",agama_uniq).map{|a| [a.nama_agama, a.id]}.unshift(["-Please select-",0])

		golongan_darah_uniq = Penduduk.uniq.pluck(:golongan_darah_id)
		@golongan_darah = GolonganDarah.where("id IN(?)",golongan_darah_uniq).map{|a| [a.golongan_darah, a.id]}.unshift(["-Please select-",0])

		penghasilan_uniq = Penduduk.uniq.pluck(:penghasilan_id)
		@penghasilan = Penghasilan.where("id IN(?)",penghasilan_uniq).map{|a| [a.penghasilan, a.id]}.unshift(["-Please select-",0])

		pekerjaan_uniq = Penduduk.uniq.pluck(:pekerjaan_id)
		@pekerjaan = Pekerjaan.where("id IN(?)",pekerjaan_uniq).map{|a| [a.jenis_pekerjaan, a.id]}.unshift(["-Please select-",0])

		pendidikan_uniq = Penduduk.uniq.pluck(:pendidikan_id)
		@pendidikan = Pendidikan.where("id IN(?)",pendidikan_uniq).map{|a| [a.jenjang, a.id]}.unshift(["-Please select-",0])
		
	end

	def create
		# raise params.to_yaml
		@search = Search.create(search_params)
		redirect_to @search
	end

	def show
		# @match_penghasilans = Penghasilan.where ()
		

		@search = Search.find(params[:id])
		@kelurahan = Kelurahan.all
		# raise @search.inspect
		conditions = "status != 1"

		conditions += " AND nama LIKE '%#{@search.keyword}%'" if @search.keyword.present?

		conditions += " AND kabupaten_id =#{@search.kabupaten_id}" if @search.kabupaten_id.present? && @search.kabupaten_id != 0 

		conditions += " AND kecamatan_id =#{@search.kecamatan_id}" if  @search.kecamatan_id.present? && @search.kecamatan_id != 0 

		conditions += " AND kelurahan_id = #{@search.kelurahan_id}" if @search.kelurahan_id.present? && @search.kelurahan_id != 0 
		conditions += " AND agama_id =#{@search.agama_id}" if @search.agama_id != 0

		conditions += " AND golongan_darah_id =#{@search.golongan_darah_id}" if @search.golongan_darah_id != 0 ||

		conditions += " AND penghasilan_id  =#{@search.penghasilan_id}" if @search.penghasilan_id != 0

		conditions += " AND pekerjaan_id =#{@search.pekerjaan_id}" if @search.pekerjaan_id != 0

		conditions += " AND pendidikan_id =#{@search.pendidikan_id}" if @search.pendidikan_id != 0

		# raise conditions.inspect

		penghasilan1 = Penduduk.where("penghasilan_id = 1 AND #{conditions}").size
		penghasilan2 = Penduduk.where("penghasilan_id = 2 AND #{conditions}").size
		penghasilan3 = Penduduk.where("penghasilan_id = 3 AND #{conditions}").size
		penghasilan4 = Penduduk.where("penghasilan_id = 4 AND #{conditions}").size
		penghasilan5 = Penduduk.where("penghasilan_id = 5 AND #{conditions}").size


		@match_penduduks = Penduduk.where(conditions)

		@chart = Gchart.pie_3d(
					:data => [ penghasilan1, penghasilan2,penghasilan3,penghasilan4, penghasilan5],
					:labels => ["penghasilan1", "penghasilan2", "penghasilan3","penghasilan4", "penghasilan5"],
					:legend=> ['penghasilan1', 'penghasilan2', 'penghasilan3', 'penghasilan4', 'penghasilan5'], 
					:size => '400x100'
					)
		# raise @match_penduduks.to_yaml
	end

	private

	def search_params
		params.require(:search).permit(:keyword, :penghasilan_id, :agama_id, :golongan_darah_id, :pekerjaan_id, :kabupaten_id, :kecamatan_id, :kelurahan_id, :pendidikan_id )
	end
end
