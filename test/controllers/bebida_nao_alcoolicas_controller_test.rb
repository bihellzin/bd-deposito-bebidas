require "test_helper"

class BebidaNaoAlcoolicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bebida_nao_alcoolica = bebida_nao_alcoolicas(:one)
  end

  test "should get index" do
    get bebida_nao_alcoolicas_url
    assert_response :success
  end

  test "should get new" do
    get new_bebida_nao_alcoolica_url
    assert_response :success
  end

  test "should create bebida_nao_alcoolica" do
    assert_difference('BebidaNaoAlcoolica.count') do
      post bebida_nao_alcoolicas_url, params: { bebida_nao_alcoolica: { codigo_de_barras: @bebida_nao_alcoolica.codigo_de_barras, nome: @bebida_nao_alcoolica.nome, quantidade_estoque: @bebida_nao_alcoolica.quantidade_estoque, valor: @bebida_nao_alcoolica.valor } }
    end

    assert_redirected_to bebida_nao_alcoolica_url(BebidaNaoAlcoolica.last)
  end

  test "should show bebida_nao_alcoolica" do
    get bebida_nao_alcoolica_url(@bebida_nao_alcoolica)
    assert_response :success
  end

  test "should get edit" do
    get edit_bebida_nao_alcoolica_url(@bebida_nao_alcoolica)
    assert_response :success
  end

  test "should update bebida_nao_alcoolica" do
    patch bebida_nao_alcoolica_url(@bebida_nao_alcoolica), params: { bebida_nao_alcoolica: { codigo_de_barras: @bebida_nao_alcoolica.codigo_de_barras, nome: @bebida_nao_alcoolica.nome, quantidade_estoque: @bebida_nao_alcoolica.quantidade_estoque, valor: @bebida_nao_alcoolica.valor } }
    assert_redirected_to bebida_nao_alcoolica_url(@bebida_nao_alcoolica)
  end

  test "should destroy bebida_nao_alcoolica" do
    assert_difference('BebidaNaoAlcoolica.count', -1) do
      delete bebida_nao_alcoolica_url(@bebida_nao_alcoolica)
    end

    assert_redirected_to bebida_nao_alcoolicas_url
  end
end
