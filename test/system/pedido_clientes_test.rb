require "application_system_test_case"

class PedidoClientesTest < ApplicationSystemTestCase
  setup do
    @pedido_cliente = pedido_clientes(:one)
  end

  test "visiting the index" do
    visit pedido_clientes_url
    assert_selector "h1", text: "Pedido Clientes"
  end

  test "creating a Pedido cliente" do
    visit pedido_clientes_url
    click_on "New Pedido Cliente"

    fill_in "Quantidade", with: @pedido_cliente.quantidade
    fill_in "Valor", with: @pedido_cliente.valor
    click_on "Create Pedido cliente"

    assert_text "Pedido cliente was successfully created"
    click_on "Back"
  end

  test "updating a Pedido cliente" do
    visit pedido_clientes_url
    click_on "Edit", match: :first

    fill_in "Quantidade", with: @pedido_cliente.quantidade
    fill_in "Valor", with: @pedido_cliente.valor
    click_on "Update Pedido cliente"

    assert_text "Pedido cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Pedido cliente" do
    visit pedido_clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pedido cliente was successfully destroyed"
  end
end
