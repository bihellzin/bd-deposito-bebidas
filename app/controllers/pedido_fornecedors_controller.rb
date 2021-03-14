class PedidoFornecedorsController < ApplicationController
  before_action :set_pedido_fornecedor, only: %i[ show edit update destroy ]

  # GET /pedido_fornecedors or /pedido_fornecedors.json
  def index
    @pedido_fornecedors = PedidoFornecedor.all
  end

  # GET /pedido_fornecedors/1 or /pedido_fornecedors/1.json
  def show
  end

  # GET /pedido_fornecedors/new
  def new
    @pedido_fornecedor = PedidoFornecedor.new
  end

  # GET /pedido_fornecedors/1/edit
  def edit
  end

  # POST /pedido_fornecedors or /pedido_fornecedors.json
  def create
    @pedido_fornecedor = PedidoFornecedor.new(pedido_fornecedor_params)

    respond_to do |format|
      if @pedido_fornecedor.save
        format.html { redirect_to @pedido_fornecedor, notice: "Pedido fornecedor was successfully created." }
        format.json { render :show, status: :created, location: @pedido_fornecedor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pedido_fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_fornecedors/1 or /pedido_fornecedors/1.json
  def update
    respond_to do |format|
      if @pedido_fornecedor.update(pedido_fornecedor_params)
        format.html { redirect_to @pedido_fornecedor, notice: "Pedido fornecedor was successfully updated." }
        format.json { render :show, status: :ok, location: @pedido_fornecedor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pedido_fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_fornecedors/1 or /pedido_fornecedors/1.json
  def destroy
    @pedido_fornecedor.destroy
    respond_to do |format|
      format.html { redirect_to pedido_fornecedors_url, notice: "Pedido fornecedor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_fornecedor
      @pedido_fornecedor = PedidoFornecedor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pedido_fornecedor_params
      params.require(:pedido_fornecedor).permit(:quantidade, :valor)
    end
end
