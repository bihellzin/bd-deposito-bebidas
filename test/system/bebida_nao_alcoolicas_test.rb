require "application_system_test_case"

class BebidaNaoAlcoolicasTest < ApplicationSystemTestCase
  setup do
    @bebida_nao_alcoolica = bebida_nao_alcoolicas(:one)
  end

  test "visiting the index" do
    visit bebida_nao_alcoolicas_url
    assert_selector "h1", text: "Bebida Nao Alcoolicas"
  end

  test "creating a Bebida nao alcoolica" do
    visit bebida_nao_alcoolicas_url
    click_on "New Bebida Nao Alcoolica"

    fill_in "Codigo de barras", with: @bebida_nao_alcoolica.codigo_de_barras
    fill_in "Nome", with: @bebida_nao_alcoolica.nome
    fill_in "Quantidade estoque", with: @bebida_nao_alcoolica.quantidade_estoque
    fill_in "Valor", with: @bebida_nao_alcoolica.valor
    click_on "Create Bebida nao alcoolica"

    assert_text "Bebida nao alcoolica was successfully created"
    click_on "Back"
  end

  test "updating a Bebida nao alcoolica" do
    visit bebida_nao_alcoolicas_url
    click_on "Edit", match: :first

    fill_in "Codigo de barras", with: @bebida_nao_alcoolica.codigo_de_barras
    fill_in "Nome", with: @bebida_nao_alcoolica.nome
    fill_in "Quantidade estoque", with: @bebida_nao_alcoolica.quantidade_estoque
    fill_in "Valor", with: @bebida_nao_alcoolica.valor
    click_on "Update Bebida nao alcoolica"

    assert_text "Bebida nao alcoolica was successfully updated"
    click_on "Back"
  end

  test "destroying a Bebida nao alcoolica" do
    visit bebida_nao_alcoolicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bebida nao alcoolica was successfully destroyed"
  end
end
