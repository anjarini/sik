class PenduduksController < ApplicationController
  before_action :set_penduduk, only: [:show, :edit, :update, :destroy]
  layout 'opencity'
  # GET /penduduks
  # GET /penduduks.json

  def search 

  end

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

  def index
    @penduduks = Penduduk.search(params[:search])
    @status_keluargas = StatusKeluarga.all
    @kelurahans = Kelurahan.all
    @kecamatans = Kecamatan.all
    @kabupatens = Kabupaten.all
    @penghasilans = Penghasilan.all
  end

  # GET /penduduks/1
  # GET /penduduks/1.json
  def show
    @penduduk= Penduduk.find(params[:id])
    @status_keluargas = StatusKeluarga.all
    @kelurahans = Kelurahan.all
    @penghasilans = Penghasilan.all
    @kecamatans = Kecamatan.all
    @kabupatens = Kabupaten.all 

  end

  # GET /penduduks/new
  def new
    @genres = Kabupaten.all
    @artists = Kecamatan.all
    @songs = Kelurahan.all

    @penduduk = Penduduk.new
    @golongan_darahs = GolonganDarah.all
    @agamas = Agama.all
    @pekerjaans = Pekerjaan.all
    @status_keluargas = StatusKeluarga.all
    @pendidikans = Pendidikan.all
    @kelurahans = Kelurahan.all
    @kecamatans = Kecamatan.all
    @kabupatens = Kabupaten.all 
    @penghasilans = Penghasilan.all
end


  # GET /penduduks/1/edit
  def edit

    @penduduk = Penduduk.find(params[:id])
    @golongan_darahs = GolonganDarah.all
    @agamas = Agama.all
    @pekerjaans= Pekerjaan.all
    @status_keluargas = StatusKeluarga.all
    @pendidikans = Pendidikan.all
    @kelurahans = Kelurahan.all
    @kecamatans = Kecamatan.all
    @kabupatens = Kabupaten.all
    @penghasilans = Penghasilan.all  

   
  end

  # POST /penduduks
  # POST /penduduks.json
  def create
    #raise penduduk_params.to_yaml
    @penduduk = Penduduk.new(penduduk_params)
    @golongan_darahs = GolonganDarah.all
    @agamas = Agama.all
    @pekerjaans= Pekerjaan.all
    @status_keluargas = StatusKeluarga.all
    @pendidikans = Pendidikan.all
    @kelurahans = Kelurahan.all
    @kecamatans = Kecamatan.all
    @kabupatens = Kabupaten.all
    @penghasilans = Penghasilan.all 
    respond_to do |format|
      if @penduduk.save
        format.html { redirect_to @penduduk, notice: 'Penduduk was successfully created.' }
        format.json { render :show, status: :created, location: @penduduk }
      else
        format.html { render :new }
        format.json { render json: @penduduk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /penduduks/1
  # PATCH/PUT /penduduks/1.json
  def update
    @golongan_darahs = GolonganDarah.all
    @agamas = Agama.all
    @pekerjaans= Pekerjaan.all
    @status_keluargas = StatusKeluarga.all
    @pendidikans = Pendidikan.all
    @kelurahans = Kelurahan.all
    @kecamatans = Kecamatan.all
    @kabupatens = Kabupaten.all 
    @penghasilans = Penghasilan.all

    respond_to do |format|
      if @penduduk.update(penduduk_params)
        format.html { redirect_to @penduduk, notice: 'Penduduk was successfully updated.' }
        format.json { render :show, status: :ok, location: @penduduk }
      else
        format.html { render :edit }
        format.json { render json: @penduduk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /penduduks/1
  # DELETE /penduduks/1.json
  def destroy
    @penduduk.destroy
    respond_to do |format|
      format.html { redirect_to penduduks_url, notice: 'Penduduk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_penduduk
      @penduduk = Penduduk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def penduduk_params
      params.require(:penduduk).permit(:nik ,:no_kk, :nama, :golongan_darah_id, :status_keluarga_id, :tempat_lahir, :tanggal_lahir, :jenis_kelamin, :pekerjaan_id, :kewarganegaraan, :agama_id, :pendidikan_id, :kelurahan_id, :rt, :rw, :alamat, :penghasilan_id , :status, :kecamatan_id, :kabupaten_id )
    end
end
