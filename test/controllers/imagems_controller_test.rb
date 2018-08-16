require 'test_helper'

class ImagemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imagem = imagems(:one)
  end

  test "should get index" do
    get imagems_url
    assert_response :success
  end

  test "should get new" do
    get new_imagem_url
    assert_response :success
  end

  test "should create imagem" do
    assert_difference('Imagem.count') do
      post imagems_url, params: { imagem: { avatar: @imagem.avatar } }
    end

    assert_redirected_to imagem_url(Imagem.last)
  end

  test "should show imagem" do
    get imagem_url(@imagem)
    assert_response :success
  end

  test "should get edit" do
    get edit_imagem_url(@imagem)
    assert_response :success
  end

  test "should update imagem" do
    patch imagem_url(@imagem), params: { imagem: { avatar: @imagem.avatar } }
    assert_redirected_to imagem_url(@imagem)
  end

  test "should destroy imagem" do
    assert_difference('Imagem.count', -1) do
      delete imagem_url(@imagem)
    end

    assert_redirected_to imagems_url
  end
end
