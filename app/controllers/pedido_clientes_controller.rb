class PedidoClientesController < ApplicationController
  before_action :set_pedido_cliente, only: %i[ show edit update destroy ]

  # GET /pedido_clientes or /pedido_clientes.json
  def index
    @pedido_clientes = PedidoCliente.all
  end

  # GET /pedido_clientes/1 or /pedido_clientes/1.json
  def show
  end

  # GET /pedido_clientes/new
  def new
    @pedido_cliente = PedidoCliente.new
  end

  # GET /pedido_clientes/1/edit
  def edit
  end

  # POST /pedido_clientes or /pedido_clientes.json
  def create
    @pedido_cliente = PedidoCliente.new(pedido_cliente_params)

    respond_to do |format|
      if @pedido_cliente.save
        format.html { redirect_to @pedido_cliente, notice: "Pedido cliente was successfully created." }
        format.json { render :show, status: :created, location: @pedido_cliente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pedido_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_clientes/1 or /pedido_clientes/1.json
  def update
    respond_to do |format|
      if @pedido_cliente.update(pedido_cliente_params)
        format.html { redirect_to @pedido_cliente, notice: "Pedido cliente was successfully updated." }
        format.json { render :show, status: :ok, location: @pedido_cliente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pedido_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_clientes/1 or /pedido_clientes/1.json
  def destroy
    @pedido_cliente.destroy
    respond_to do |format|
      format.html { redirect_to pedido_clientes_url, notice: "Pedido cliente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_cliente
      @pedido_cliente = PedidoCliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pedido_cliente_params
      params.require(:pedido_cliente).permit(:quantidade, :valor)
    end
end
