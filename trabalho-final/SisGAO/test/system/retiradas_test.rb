require "application_system_test_case"

class RetiradasTest < ApplicationSystemTestCase
  setup do
    @retirada = retiradas(:one)
  end

  test "visiting the index" do
    visit retiradas_url
    assert_selector "h1", text: "Retiradas"
  end

  test "creating a Retirada" do
    visit retiradas_url
    click_on "New Retirada"

    fill_in "Funcionario", with: @retirada.Funcionario_id
    fill_in "Material", with: @retirada.Material_id
    fill_in "Quantidade", with: @retirada.quantidade
    click_on "Create Retirada"

    assert_text "Retirada was successfully created"
    click_on "Back"
  end

  test "updating a Retirada" do
    visit retiradas_url
    click_on "Edit", match: :first

    fill_in "Funcionario", with: @retirada.Funcionario_id
    fill_in "Material", with: @retirada.Material_id
    fill_in "Quantidade", with: @retirada.quantidade
    click_on "Update Retirada"

    assert_text "Retirada was successfully updated"
    click_on "Back"
  end

  test "destroying a Retirada" do
    visit retiradas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Retirada was successfully destroyed"
  end
end
