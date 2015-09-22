class GolonganDarahsController < ApplicationController
  before_action :set_golongan_darah, only: [:show, :edit, :update, :destroy]
layout 'opencity'
  # GET /golongan_darahs
  # GET /golongan_darahs.json
  def index
    @golongan_darahs = GolonganDarah.all
  end

  # GET /golongan_darahs/1
  # GET /golongan_darahs/1.json
  def show
  end

  # GET /golongan_darahs/new
  def new
    @golongan_darah = GolonganDarah.new
  end

  # GET /golongan_darahs/1/edit
  def edit
  end

  # POST /golongan_darahs
  # POST /golongan_darahs.json
  def create
    @golongan_darah = GolonganDarah.new(golongan_darah_params)

    respond_to do |format|
      if @golongan_darah.save
        format.html { redirect_to @golongan_darah, notice: 'Golongan darah was successfully created.' }
        format.json { render :show, status: :created, location: @golongan_darah }
      else
        format.html { render :new }
        format.json { render json: @golongan_darah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /golongan_darahs/1
  # PATCH/PUT /golongan_darahs/1.json
  def update
    respond_to do |format|
      if @golongan_darah.update(golongan_darah_params)
        format.html { redirect_to @golongan_darah, notice: 'Golongan darah was successfully updated.' }
        format.json { render :show, status: :ok, location: @golongan_darah }
      else
        format.html { render :edit }
        format.json { render json: @golongan_darah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /golongan_darahs/1
  # DELETE /golongan_darahs/1.json
  def destroy
    @golongan_darah.destroy
    respond_to do |format|
      format.html { redirect_to golongan_darahs_url, notice: 'Golongan darah was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_golongan_darah
      @golongan_darah = GolonganDarah.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def golongan_darah_params
      params.require(:golongan_darah).permit(:golongan_darah)
    end
end
