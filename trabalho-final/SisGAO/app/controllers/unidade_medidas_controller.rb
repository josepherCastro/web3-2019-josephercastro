class UnidadeMedidasController < ApplicationController
  before_action :set_unidade_medida, only: [:show, :edit, :update, :destroy]

  # GET /unidade_medidas
  # GET /unidade_medidas.json
  def index
    @unidade_medidas = UnidadeMedida.all
  end

  # GET /unidade_medidas/1
  # GET /unidade_medidas/1.json
  def show
  end

  # GET /unidade_medidas/new
  def new
    @unidade_medida = UnidadeMedida.new
  end

  # GET /unidade_medidas/1/edit
  def edit
  end

  # POST /unidade_medidas
  # POST /unidade_medidas.json
  def create
    @unidade_medida = UnidadeMedida.new(unidade_medida_params)

    respond_to do |format|
      if @unidade_medida.save
        format.html { redirect_to @unidade_medida, notice: 'Unidade medida was successfully created.' }
        format.json { render :show, status: :created, location: @unidade_medida }
      else
        format.html { render :new }
        format.json { render json: @unidade_medida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unidade_medidas/1
  # PATCH/PUT /unidade_medidas/1.json
  def update
    respond_to do |format|
      if @unidade_medida.update(unidade_medida_params)
        format.html { redirect_to @unidade_medida, notice: 'Unidade medida was successfully updated.' }
        format.json { render :show, status: :ok, location: @unidade_medida }
      else
        format.html { render :edit }
        format.json { render json: @unidade_medida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unidade_medidas/1
  # DELETE /unidade_medidas/1.json
  def destroy
    @unidade_medida.destroy
    respond_to do |format|
      format.html { redirect_to unidade_medidas_url, notice: 'Unidade medida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidade_medida
      @unidade_medida = UnidadeMedida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unidade_medida_params
      params.require(:unidade_medida).permit(:nome)
    end
end
