require "test_helper"

class PedidoFornecedorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido_fornecedor = pedido_fornecedors(:one)
  end

  test "should get index" do
    get pedido_fornecedors_url
    assert_response :success
  end

  test "should get new" do
    get new_pedido_fornecedor_url
    assert_response :success
  end

  test "should create pedido_fornecedor" do
    assert_difference('PedidoFornecedor.count') do
      post pedido_fornecedors_url, params: { pedido_fornecedor: { quantidade: @pedido_fornecedor.quantidade, valor: @pedido_fornecedor.valor } }
    end

    assert_redirected_to pedido_fornecedor_url(PedidoFornecedor.last)
  end

  test "should show pedido_fornecedor" do
    get pedido_fornecedor_url(@pedido_fornecedor)
    assert_response :success
  end

  test "should get edit" do
    get edit_pedido_fornecedor_url(@pedido_fornecedor)
    assert_response :success
  end

  test "should update pedido_fornecedor" do
    patch pedido_fornecedor_url(@pedido_fornecedor), params: { pedido_fornecedor: { quantidade: @pedido_fornecedor.quantidade, valor: @pedido_fornecedor.valor } }
    assert_redirected_to pedido_fornecedor_url(@pedido_fornecedor)
  end

  test "should destroy pedido_fornecedor" do
    assert_difference('PedidoFornecedor.count', -1) do
      delete pedido_fornecedor_url(@pedido_fornecedor)
    end

    assert_redirected_to pedido_fornecedors_url
  end
end
