require 'test_helper'

class ClassifieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classifield = classifields(:one)
  end

  test "should get index" do
    get classifields_url
    assert_response :success
  end

  test "should get new" do
    get new_classifield_url
    assert_response :success
  end

  test "should create classifield" do
    assert_difference('Classifield.count') do
      post classifields_url, params: { classifield: { date: @classifield.date, description: @classifield.description, sale: @classifield.sale, title: @classifield.title, user_id: @classifield.user_id, value: @classifield.value } }
    end

    assert_redirected_to classifield_url(Classifield.last)
  end

  test "should show classifield" do
    get classifield_url(@classifield)
    assert_response :success
  end

  test "should get edit" do
    get edit_classifield_url(@classifield)
    assert_response :success
  end

  test "should update classifield" do
    patch classifield_url(@classifield), params: { classifield: { date: @classifield.date, description: @classifield.description, sale: @classifield.sale, title: @classifield.title, user_id: @classifield.user_id, value: @classifield.value } }
    assert_redirected_to classifield_url(@classifield)
  end

  test "should destroy classifield" do
    assert_difference('Classifield.count', -1) do
      delete classifield_url(@classifield)
    end

    assert_redirected_to classifields_url
  end
end
