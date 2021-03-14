require "application_system_test_case"

class BebidaAlcoolicasTest < ApplicationSystemTestCase
  setup do
    @bebida_alcoolica = bebida_alcoolicas(:one)
  end

  test "visiting the index" do
    visit bebida_alcoolicas_url
    assert_selector "h1", text: "Bebida Alcoolicas"
  end

  test "creating a Bebida alcoolica" do
    visit bebida_alcoolicas_url
    click_on "New Bebida Alcoolica"

    fill_in "Codigo de barras", with: @bebida_alcoolica.codigo_de_barras
    fill_in "Identidade cliente", with: @bebida_alcoolica.identidade_cliente
    fill_in "Nome", with: @bebida_alcoolica.nome
    fill_in "Quantidade estoque", with: @bebida_alcoolica.quantidade_estoque
    fill_in "Valor", with: @bebida_alcoolica.valor
    click_on "Create Bebida alcoolica"

    assert_text "Bebida alcoolica was successfully created"
    click_on "Back"
  end

  test "updating a Bebida alcoolica" do
    visit bebida_alcoolicas_url
    click_on "Edit", match: :first

    fill_in "Codigo de barras", with: @bebida_alcoolica.codigo_de_barras
    fill_in "Identidade cliente", with: @bebida_alcoolica.identidade_cliente
    fill_in "Nome", with: @bebida_alcoolica.nome
    fill_in "Quantidade estoque", with: @bebida_alcoolica.quantidade_estoque
    fill_in "Valor", with: @bebida_alcoolica.valor
    click_on "Update Bebida alcoolica"

    assert_text "Bebida alcoolica was successfully updated"
    click_on "Back"
  end

  test "destroying a Bebida alcoolica" do
    visit bebida_alcoolicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bebida alcoolica was successfully destroyed"
  end
end
