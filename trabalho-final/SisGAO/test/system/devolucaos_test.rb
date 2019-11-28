require "application_system_test_case"

class DevolucaosTest < ApplicationSystemTestCase
  setup do
    @devolucao = devolucaos(:one)
  end

  test "visiting the index" do
    visit devolucaos_url
    assert_selector "h1", text: "Devolucaos"
  end

  test "creating a Devolucao" do
    visit devolucaos_url
    click_on "New Devolucao"

    fill_in "Retirada", with: @devolucao.Retirada_id
    fill_in "Quantidade", with: @devolucao.quantidade
    click_on "Create Devolucao"

    assert_text "Devolucao was successfully created"
    click_on "Back"
  end

  test "updating a Devolucao" do
    visit devolucaos_url
    click_on "Edit", match: :first

    fill_in "Retirada", with: @devolucao.Retirada_id
    fill_in "Quantidade", with: @devolucao.quantidade
    click_on "Update Devolucao"

    assert_text "Devolucao was successfully updated"
    click_on "Back"
  end

  test "destroying a Devolucao" do
    visit devolucaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Devolucao was successfully destroyed"
  end
end
