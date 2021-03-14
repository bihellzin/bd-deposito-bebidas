class BebidaNaoAlcoolicasController < ApplicationController
  before_action :set_bebida_nao_alcoolica, only: %i[ show edit update destroy ]

  # GET /bebida_nao_alcoolicas or /bebida_nao_alcoolicas.json
  def index
    @bebida_nao_alcoolicas = BebidaNaoAlcoolica.all
  end

  # GET /bebida_nao_alcoolicas/1 or /bebida_nao_alcoolicas/1.json
  def show
  end

  # GET /bebida_nao_alcoolicas/new
  def new
    @bebida_nao_alcoolica = BebidaNaoAlcoolica.new
  end

  # GET /bebida_nao_alcoolicas/1/edit
  def edit
  end

  # POST /bebida_nao_alcoolicas or /bebida_nao_alcoolicas.json
  def create
    @bebida_nao_alcoolica = BebidaNaoAlcoolica.new(bebida_nao_alcoolica_params)

    respond_to do |format|
      if @bebida_nao_alcoolica.save
        format.html { redirect_to @bebida_nao_alcoolica, notice: "Bebida nao alcoolica was successfully created." }
        format.json { render :show, status: :created, location: @bebida_nao_alcoolica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bebida_nao_alcoolica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bebida_nao_alcoolicas/1 or /bebida_nao_alcoolicas/1.json
  def update
    respond_to do |format|
      if @bebida_nao_alcoolica.update(bebida_nao_alcoolica_params)
        format.html { redirect_to @bebida_nao_alcoolica, notice: "Bebida nao alcoolica was successfully updated." }
        format.json { render :show, status: :ok, location: @bebida_nao_alcoolica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bebida_nao_alcoolica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bebida_nao_alcoolicas/1 or /bebida_nao_alcoolicas/1.json
  def destroy
    @bebida_nao_alcoolica.destroy
    respond_to do |format|
      format.html { redirect_to bebida_nao_alcoolicas_url, notice: "Bebida nao alcoolica was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bebida_nao_alcoolica
      @bebida_nao_alcoolica = BebidaNaoAlcoolica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bebida_nao_alcoolica_params
      params.require(:bebida_nao_alcoolica).permit(:codigo_de_barras, :nome, :valor, :quantidade_estoque)
    end
end
