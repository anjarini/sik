class PekerjaansController < ApplicationController
  before_action :set_pekerjaan, only: [:show, :edit, :update, :destroy]
layout 'opencity'
  # GET /pekerjaans
  # GET /pekerjaans.json
  def index
    @pekerjaans = Pekerjaan.all
  end

  # GET /pekerjaans/1
  # GET /pekerjaans/1.json
  def show
  end

  # GET /pekerjaans/new
  def new
    @pekerjaan = Pekerjaan.new
  end

  # GET /pekerjaans/1/edit
  def edit
  end

  # POST /pekerjaans
  # POST /pekerjaans.json
  def create
    @pekerjaan = Pekerjaan.new(pekerjaan_params)

    respond_to do |format|
      if @pekerjaan.save
        format.html { redirect_to @pekerjaan, notice: 'Pekerjaan was successfully created.' }
        format.json { render :show, status: :created, location: @pekerjaan }
      else
        format.html { render :new }
        format.json { render json: @pekerjaan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pekerjaans/1
  # PATCH/PUT /pekerjaans/1.json
  def update
    respond_to do |format|
      if @pekerjaan.update(pekerjaan_params)
        format.html { redirect_to @pekerjaan, notice: 'Pekerjaan was successfully updated.' }
        format.json { render :show, status: :ok, location: @pekerjaan }
      else
        format.html { render :edit }
        format.json { render json: @pekerjaan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pekerjaans/1
  # DELETE /pekerjaans/1.json
  def destroy
    @pekerjaan.destroy
    respond_to do |format|
      format.html { redirect_to pekerjaans_url, notice: 'Pekerjaan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pekerjaan
      @pekerjaan = Pekerjaan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pekerjaan_params
      params.require(:pekerjaan).permit(:jenis_pekerjaan)
    end
end
