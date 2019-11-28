class RetiradasController < ApplicationController
  before_action :set_retirada, only: [:show, :edit, :update, :destroy]

  # GET /retiradas
  # GET /retiradas.json
  def index
    @retiradas = Retirada.all
  end

  # GET /retiradas/1
  # GET /retiradas/1.json
  def show
  end

  # GET /retiradas/new
  def new
    @retirada = Retirada.new
  end

  # GET /retiradas/1/edit
  def edit
  end

  # POST /retiradas
  # POST /retiradas.json
  def create
    @retirada = Retirada.new(retirada_params)

    respond_to do |format|
      if @retirada.save
        format.html { redirect_to @retirada, notice: 'Retirada was successfully created.' }
        format.json { render :show, status: :created, location: @retirada }
      else
        format.html { render :new }
        format.json { render json: @retirada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retiradas/1
  # PATCH/PUT /retiradas/1.json
  def update
    respond_to do |format|
      if @retirada.update(retirada_params)
        format.html { redirect_to @retirada, notice: 'Retirada was successfully updated.' }
        format.json { render :show, status: :ok, location: @retirada }
      else
        format.html { render :edit }
        format.json { render json: @retirada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retiradas/1
  # DELETE /retiradas/1.json
  def destroy
    @retirada.destroy
    respond_to do |format|
      format.html { redirect_to retiradas_url, notice: 'Retirada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retirada
      @retirada = Retirada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def retirada_params
      params.require(:retirada).permit(:quantidade, :Material_id, :Funcionario_id)
    end
end
