class AgamasController < ApplicationController
  before_action :set_agama, only: [:show, :edit, :update, :destroy]
layout 'opencity'
  # GET /agamas
  # GET /agamas.json
  def index
    @agamas = Agama.all
  end

  # GET /agamas/1
  # GET /agamas/1.json
  def show
  end

  # GET /agamas/new
  def new
    @agama = Agama.new
  end

  # GET /agamas/1/edit
  def edit
  end

  # POST /agamas
  # POST /agamas.json
  def create
    @agama = Agama.new(agama_params)

    respond_to do |format|
      if @agama.save
        format.html { redirect_to @agama, notice: 'Agama was successfully created.' }
        format.json { render :show, status: :created, location: @agama }
      else
        format.html { render :new }
        format.json { render json: @agama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agamas/1
  # PATCH/PUT /agamas/1.json
  def update
    respond_to do |format|
      if @agama.update(agama_params)
        format.html { redirect_to @agama, notice: 'Agama was successfully updated.' }
        format.json { render :show, status: :ok, location: @agama }
      else
        format.html { render :edit }
        format.json { render json: @agama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agamas/1
  # DELETE /agamas/1.json
  def destroy
    @agama.destroy
    respond_to do |format|
      format.html { redirect_to agamas_url, notice: 'Agama was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agama
      @agama = Agama.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agama_params
      params.require(:agama).permit(:nama_agama)
    end
end
