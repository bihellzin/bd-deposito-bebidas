require "test_helper"

class PedidoClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido_cliente = pedido_clientes(:one)
  end

  test "should get index" do
    get pedido_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_pedido_cliente_url
    assert_response :success
  end

  test "should create pedido_cliente" do
    assert_difference('PedidoCliente.count') do
      post pedido_clientes_url, params: { pedido_cliente: { quantidade: @pedido_cliente.quantidade, valor: @pedido_cliente.valor } }
    end

    assert_redirected_to pedido_cliente_url(PedidoCliente.last)
  end

  test "should show pedido_cliente" do
    get pedido_cliente_url(@pedido_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedido_cliente_url(@pedido_cliente)
    assert_response :success
  end

  test "should update pedido_cliente" do
    patch pedido_cliente_url(@pedido_cliente), params: { pedido_cliente: { quantidade: @pedido_cliente.quantidade, valor: @pedido_cliente.valor } }
    assert_redirected_to pedido_cliente_url(@pedido_cliente)
  end

  test "should destroy pedido_cliente" do
    assert_difference('PedidoCliente.count', -1) do
      delete pedido_cliente_url(@pedido_cliente)
    end

    assert_redirected_to pedido_clientes_url
  end
end
