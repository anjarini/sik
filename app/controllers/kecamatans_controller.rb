class KecamatansController < ApplicationController
  before_action :set_kecamatan, only: [:show, :edit, :update, :destroy]
layout 'opencity'
  # GET /kecamatans
  # GET /kecamatans.json
  def index
    @kabupatens = Kabupaten.all
    @kecamatans = Kecamatan.all
    @admins = Admin.all
  end

  # GET /kecamatans/1
  # GET /kecamatans/1.json
  def show
    @kabupatens = Kabupaten.all
    @admins = Admin.all
  end

  # GET /kecamatans/new
  def new
    @kecamatan = Kecamatan.new
    @kabupatens = Kabupaten.all
    @admins = Admin.all
  end

  # GET /kecamatans/1/edit
  def edit
    @kabupatens = Kabupaten.all
    @admins = Admin.all
  end

  # POST /kecamatans
  # POST /kecamatans.json
  def create
    @kecamatan = Kecamatan.new(kecamatan_params)
    @kabupatens = Kabupaten.all
    @admins = Admin.all
    respond_to do |format|
      if @kecamatan.save
        format.html { redirect_to @kecamatan, notice: 'Kecamatan was successfully created.' }
        format.json { render :show, status: :created, location: @kecamatan }
      else
        format.html { render :new }
        format.json { render json: @kecamatan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kecamatans/1
  # PATCH/PUT /kecamatans/1.json
  def update
    @kabupaten = Kabupaten.all
    @admins = Admin.all
    respond_to do |format|
      if @kecamatan.update(kecamatan_params)
        format.html { redirect_to @kecamatan, notice: 'Kecamatan was successfully updated.' }
        format.json { render :show, status: :ok, location: @kecamatan }
      else
        format.html { render :edit }
        format.json { render json: @kecamatan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kecamatans/1
  # DELETE /kecamatans/1.json
  def destroy
    @kecamatan.destroy
    respond_to do |format|
      format.html { redirect_to kecamatans_url, notice: 'Kecamatan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kecamatan
      @kecamatan = Kecamatan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kecamatan_params
      params.require(:kecamatan).permit(:nama_kecamatan, :alamat, :admin_id, :kabupaten_id,)
    end
