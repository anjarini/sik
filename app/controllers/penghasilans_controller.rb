class PenghasilansController < ApplicationController
  before_action :set_penghasilan, only: [:show, :edit, :update, :destroy]
layout 'opencity'
  # GET /penghasilans
  # GET /penghasilans.json
  def index
    @penghasilans = Penghasilan.all
  end

  # GET /penghasilans/1
  # GET /penghasilans/1.json
  def show
  end

  # GET /penghasilans/new
  def new
    @penghasilan = Penghasilan.new
  end

  # GET /penghasilans/1/edit
  def edit
  end

  # POST /penghasilans
  # POST /penghasilans.json
  def create
    @penghasilan = Penghasilan.new(penghasilan_params)

    respond_to do |format|
      if @penghasilan.save
        format.html { redirect_to @penghasilan, notice: 'Penghasilan was successfully created.' }
        format.json { render :show, status: :created, location: @penghasilan }
      else
        format.html { render :new }
        format.json { render json: @penghasilan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /penghasilans/1
  # PATCH/PUT /penghasilans/1.json
  def update
    respond_to do |format|
      if @penghasilan.update(penghasilan_params)
        format.html { redirect_to @penghasilan, notice: 'Penghasilan was successfully updated.' }
        format.json { render :show, status: :ok, location: @penghasilan }
      else
        format.html { render :edit }
        format.json { render json: @penghasilan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /penghasilans/1
  # DELETE /penghasilans/1.json
  def destroy
    @penghasilan.destroy
    respond_to do |format|
      format.html { redirect_to penghasilans_url, notice: 'Penghasilan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_penghasilan
      @penghasilan = Penghasilan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def penghasilan_params
      params.require(:penghasilan).permit(:penghasilan)
    end
end
