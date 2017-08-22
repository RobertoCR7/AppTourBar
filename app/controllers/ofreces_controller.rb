class OfrecesController < ApplicationController
  before_action :set_ofrece, only: [:show, :edit, :update, :destroy]

  # GET /ofreces
  # GET /ofreces.json
  def index
    @ofreces = Ofrece.all
  end

  # GET /ofreces/1
  # GET /ofreces/1.json
  def show
  end

  # GET /ofreces/new
  def new
    @ofrece = Ofrece.new
  end

  # GET /ofreces/1/edit
  def edit
  end

  # POST /ofreces
  # POST /ofreces.json
  def create
    @ofrece = Ofrece.new(ofrece_params)

    respond_to do |format|
      if @ofrece.save
        format.html { redirect_to @ofrece, notice: 'Ofrece was successfully created.' }
        format.json { render :show, status: :created, location: @ofrece }
      else
        format.html { render :new }
        format.json { render json: @ofrece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ofreces/1
  # PATCH/PUT /ofreces/1.json
  def update
    respond_to do |format|
      if @ofrece.update(ofrece_params)
        format.html { redirect_to @ofrece, notice: 'Ofrece was successfully updated.' }
        format.json { render :show, status: :ok, location: @ofrece }
      else
        format.html { render :edit }
        format.json { render json: @ofrece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ofreces/1
  # DELETE /ofreces/1.json
  def destroy
    @ofrece.destroy
    respond_to do |format|
      format.html { redirect_to ofreces_url, notice: 'Ofrece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofrece
      @ofrece = Ofrece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ofrece_params
      params.require(:ofrece).permit(:dia, :nombre, :tipo, :descripcion, :precio, :calificasion)
    end
end
