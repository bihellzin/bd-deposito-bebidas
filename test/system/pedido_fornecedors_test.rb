require "application_system_test_case"

class PedidoFornecedorsTest < ApplicationSystemTestCase
  setup do
    @pedido_fornecedor = pedido_fornecedors(:one)
  end

  test "visiting the index" do
    visit pedido_fornecedors_url
    assert_selector "h1", text: "Pedido Fornecedors"
  end

  test "creating a Pedido fornecedor" do
    visit pedido_fornecedors_url
    click_on "New Pedido Fornecedor"

    fill_in "Quantidade", with: @pedido_fornecedor.quantidade
    fill_in "Valor", with: @pedido_fornecedor.valor
    click_on "Create Pedido fornecedor"

    assert_text "Pedido fornecedor was successfully created"
    click_on "Back"
  end

  test "updating a Pedido fornecedor" do
    visit pedido_fornecedors_url
    click_on "Edit", match: :first

    fill_in "Quantidade", with: @pedido_fornecedor.quantidade
    fill_in "Valor", with: @pedido_fornecedor.valor
    click_on "Update Pedido fornecedor"

    assert_text "Pedido fornecedor was successfully updated"
    click_on "Back"
  end

  test "destroying a Pedido fornecedor" do
    visit pedido_fornecedors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pedido fornecedor was successfully destroyed"
  end
end
