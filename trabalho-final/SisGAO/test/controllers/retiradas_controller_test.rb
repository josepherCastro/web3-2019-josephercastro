require 'test_helper'

class RetiradasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retirada = retiradas(:one)
  end

  test "should get index" do
    get retiradas_url
    assert_response :success
  end

  test "should get new" do
    get new_retirada_url
    assert_response :success
  end

  test "should create retirada" do
    assert_difference('Retirada.count') do
      post retiradas_url, params: { retirada: { Funcionario_id: @retirada.Funcionario_id, Material_id: @retirada.Material_id, quantidade: @retirada.quantidade } }
    end

    assert_redirected_to retirada_url(Retirada.last)
  end

  test "should show retirada" do
    get retirada_url(@retirada)
    assert_response :success
  end

  test "should get edit" do
    get edit_retirada_url(@retirada)
    assert_response :success
  end

  test "should update retirada" do
    patch retirada_url(@retirada), params: { retirada: { Funcionario_id: @retirada.Funcionario_id, Material_id: @retirada.Material_id, quantidade: @retirada.quantidade } }
    assert_redirected_to retirada_url(@retirada)
  end

  test "should destroy retirada" do
    assert_difference('Retirada.count', -1) do
      delete retirada_url(@retirada)
    end

    assert_redirected_to retiradas_url
  end
end
