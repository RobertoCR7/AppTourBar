class VestimentaController < ApplicationController
  before_action :set_vestimentum, only: [:show, :edit, :update, :destroy]

  # GET /vestimenta
  # GET /vestimenta.json
  def index
    @vestimenta = Vestimentum.all
  end

  # GET /vestimenta/1
  # GET /vestimenta/1.json
  def show
  end

  # GET /vestimenta/new
  def new
    @vestimentum = Vestimentum.new
  end

  # GET /vestimenta/1/edit
  def edit
  end

  # POST /vestimenta
  # POST /vestimenta.json
  def create
    @vestimentum = Vestimentum.new(vestimentum_params)

    respond_to do |format|
      if @vestimentum.save
        format.html { redirect_to @vestimentum, notice: 'Vestimentum was successfully created.' }
        format.json { render :show, status: :created, location: @vestimentum }
      else
        format.html { render :new }
        format.json { render json: @vestimentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vestimenta/1
  # PATCH/PUT /vestimenta/1.json
  def update
    respond_to do |format|
      if @vestimentum.update(vestimentum_params)
        format.html { redirect_to @vestimentum, notice: 'Vestimentum was successfully updated.' }
        format.json { render :show, status: :ok, location: @vestimentum }
      else
        format.html { render :edit }
        format.json { render json: @vestimentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vestimenta/1
  # DELETE /vestimenta/1.json
  def destroy
    @vestimentum.destroy
    respond_to do |format|
      format.html { redirect_to vestimenta_url, notice: 'Vestimentum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vestimentum
      @vestimentum = Vestimentum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vestimentum_params
      params.require(:vestimentum).permit(:dia, :tema, :foto, :descripcion)
    end
end
