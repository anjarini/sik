class StatusKeluargasController < ApplicationController
  before_action :set_status_keluarga, only: [:show, :edit, :update, :destroy]
layout 'opencity'
  # GET /status_keluargas
  # GET /status_keluargas.json
  def index
    @status_keluargas = StatusKeluarga.all
  end

  # GET /status_keluargas/1
  # GET /status_keluargas/1.json
  def show
  end

  # GET /status_keluargas/new
  def new
    @status_keluarga = StatusKeluarga.new
  end

  # GET /status_keluargas/1/edit
  def edit
  end

  # POST /status_keluargas
  # POST /status_keluargas.json
  def create
    @status_keluarga = StatusKeluarga.new(status_keluarga_params)

    respond_to do |format|
      if @status_keluarga.save
        format.html { redirect_to @status_keluarga, notice: 'Status keluarga was successfully created.' }
        format.json { render :show, status: :created, location: @status_keluarga }
      else
        format.html { render :new }
        format.json { render json: @status_keluarga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_keluargas/1
  # PATCH/PUT /status_keluargas/1.json
  def update
    respond_to do |format|
      if @status_keluarga.update(status_keluarga_params)
        format.html { redirect_to @status_keluarga, notice: 'Status keluarga was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_keluarga }
      else
        format.html { render :edit }
        format.json { render json: @status_keluarga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_keluargas/1
  # DELETE /status_keluargas/1.json
  def destroy
    @status_keluarga.destroy
    respond_to do |format|
      format.html { redirect_to status_keluargas_url, notice: 'Status keluarga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_keluarga
      @status_keluarga = StatusKeluarga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_keluarga_params
      params.require(:status_keluarga).permit(:status_keluarga)
    end
end
