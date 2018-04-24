require 'test_helper'

class CategoryClassifiedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_classified = category_classifieds(:one)
  end

  test "should get index" do
    get category_classifieds_url
    assert_response :success
  end

  test "should get new" do
    get new_category_classified_url
    assert_response :success
  end

  test "should create category_classified" do
    assert_difference('CategoryClassified.count') do
      post category_classifieds_url, params: { category_classified: { title: @category_classified.title, user_id: @category_classified.user_id } }
    end

    assert_redirected_to category_classified_url(CategoryClassified.last)
  end

  test "should show category_classified" do
    get category_classified_url(@category_classified)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_classified_url(@category_classified)
    assert_response :success
  end

  test "should update category_classified" do
    patch category_classified_url(@category_classified), params: { category_classified: { title: @category_classified.title, user_id: @category_classified.user_id } }
    assert_redirected_to category_classified_url(@category_classified)
  end

  test "should destroy category_classified" do
    assert_difference('CategoryClassified.count', -1) do
      delete category_classified_url(@category_classified)
    end

    assert_redirected_to category_classifieds_url
  end
end
