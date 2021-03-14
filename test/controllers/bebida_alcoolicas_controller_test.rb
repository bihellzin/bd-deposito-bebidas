require "test_helper"

class BebidaAlcoolicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bebida_alcoolica = bebida_alcoolicas(:one)
  end

  test "should get index" do
    get bebida_alcoolicas_url
    assert_response :success
  end

  test "should get new" do
    get new_bebida_alcoolica_url
    assert_response :success
  end

  test "should create bebida_alcoolica" do
    assert_difference('BebidaAlcoolica.count') do
      post bebida_alcoolicas_url, params: { bebida_alcoolica: { codigo_de_barras: @bebida_alcoolica.codigo_de_barras, identidade_cliente: @bebida_alcoolica.identidade_cliente, nome: @bebida_alcoolica.nome, quantidade_estoque: @bebida_alcoolica.quantidade_estoque, valor: @bebida_alcoolica.valor } }
    end

    assert_redirected_to bebida_alcoolica_url(BebidaAlcoolica.last)
  end

  test "should show bebida_alcoolica" do
    get bebida_alcoolica_url(@bebida_alcoolica)
    assert_response :success
  end

  test "should get edit" do
    get edit_bebida_alcoolica_url(@bebida_alcoolica)
    assert_response :success
  end

  test "should update bebida_alcoolica" do
    patch bebida_alcoolica_url(@bebida_alcoolica), params: { bebida_alcoolica: { codigo_de_barras: @bebida_alcoolica.codigo_de_barras, identidade_cliente: @bebida_alcoolica.identidade_cliente, nome: @bebida_alcoolica.nome, quantidade_estoque: @bebida_alcoolica.quantidade_estoque, valor: @bebida_alcoolica.valor } }
    assert_redirected_to bebida_alcoolica_url(@bebida_alcoolica)
  end

  test "should destroy bebida_alcoolica" do
    assert_difference('BebidaAlcoolica.count', -1) do
      delete bebida_alcoolica_url(@bebida_alcoolica)
    end

    assert_redirected_to bebida_alcoolicas_url
  end
end
