class KelurahansController < ApplicationController
  before_action :set_kelurahan, only: [:show, :edit, :update, :destroy]
layout 'opencity'
  # GET /kelurahans
  # GET /kelurahans.json
  def index
    @kelurahans = Kelurahan.all
    @kecamatans = Kecamatan.all
    @admins = Admin.all
    # @hash = Gmaps4rails.build_markers(@kelurahan) do |kel, marker|
    # marker.lat kel.latitude
    # marker.lng kel.longitude
    # marker.infowindow render_to_string(:partial => "/kelurahans/map_box", locals: {kelurahan: kelurahan})
  end

  # GET /kelurahans/1
  # GET /kelurahans/1.json
  def show
    @kecamatans = Kecamatan.all
    @admins = Admin.all
  end
  # def search
  #   q = params[:nama_kelurahan]
  #   @kelurahans = Kelurahan.find(:all, :conditions => ["name LIKE %?%",q])
  # end
  # GET /kelurahans/new
  def new
    @kelurahan = Kelurahan.new
    @kecamatans = Kecamatan.all
    @admins = Admin.all
  end

  # GET /kelurahans/1/edit
  def edit
    @kecamatans = Kecamatan.all
    @admins = Admin.all
  end

  # POST /kelurahans
  # POST /kelurahans.json
  def create
    @kelurahan = Kelurahan.new(kelurahan_params)
    @kecamatans = Kecamatan.all
    @admins = Admin.all
    respond_to do |format|
      if @kelurahan.save
        format.html { redirect_to @kelurahan, notice: 'Kelurahan was successfully created.' }
        format.json { render :show, status: :created, location: @kelurahan }
      else
        format.html { render :new }
        format.json { render json: @kelurahan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kelurahans/1
  # PATCH/PUT /kelurahans/1.json
  def update
    @kecamatans = Kecamatan.all
    @admins = Admin.all
    respond_to do |format|
      if @kelurahan.update(kelurahan_params)
        format.html { redirect_to @kelurahan, notice: 'Kelurahan was successfully updated.' }
        format.json { render :show, status: :ok, location: @kelurahan }
      else
        format.html { render :edit }
        format.json { render json: @kelurahan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kelurahans/1
  # DELETE /kelurahans/1.json
  def destroy
    @kelurahan.destroy
    respond_to do |format|
      format.html { redirect_to kelurahans_url, notice: 'Kelurahan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kelurahan
      @kelurahan = Kelurahan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kelurahan_params
      params.require(:kelurahan).permit( :nama_kelurahan, :alamat_kel, :admin_id, :kecamatan_id)
    end
    