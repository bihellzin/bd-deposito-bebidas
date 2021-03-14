class BebidaAlcoolicasController < ApplicationController
  before_action :set_bebida_alcoolica, only: %i[ show edit update destroy ]

  # GET /bebida_alcoolicas or /bebida_alcoolicas.json
  def index
    @bebida_alcoolicas = BebidaAlcoolica.all
  end

  # GET /bebida_alcoolicas/1 or /bebida_alcoolicas/1.json
  def show
  end

  # GET /bebida_alcoolicas/new
  def new
    @bebida_alcoolica = BebidaAlcoolica.new
  end

  # GET /bebida_alcoolicas/1/edit
  def edit
  end

  # POST /bebida_alcoolicas or /bebida_alcoolicas.json
  def create
    @bebida_alcoolica = BebidaAlcoolica.new(bebida_alcoolica_params)

    respond_to do |format|
      if @bebida_alcoolica.save
        format.html { redirect_to @bebida_alcoolica, notice: "Bebida alcoolica was successfully created." }
        format.json { render :show, status: :created, location: @bebida_alcoolica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bebida_alcoolica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bebida_alcoolicas/1 or /bebida_alcoolicas/1.json
  def update
    respond_to do |format|
      if @bebida_alcoolica.update(bebida_alcoolica_params)
        format.html { redirect_to @bebida_alcoolica, notice: "Bebida alcoolica was successfully updated." }
        format.json { render :show, status: :ok, location: @bebida_alcoolica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bebida_alcoolica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bebida_alcoolicas/1 or /bebida_alcoolicas/1.json
  def destroy
    @bebida_alcoolica.destroy
    respond_to do |format|
      format.html { redirect_to bebida_alcoolicas_url, notice: "Bebida alcoolica was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bebida_alcoolica
      @bebida_alcoolica = BebidaAlcoolica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bebida_alcoolica_params
      params.require(:bebida_alcoolica).permit(:codigo_de_barras, :nome, :valor, :quantidade_estoque, :identidade_cliente)
    end
end
