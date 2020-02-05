require 'test_helper'

class CategoriesControllerTest ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: "sports")
  end

  test "should get cattegories index" do
    get categories_path
    assert_response :success

  end

  test "should get new" do
    get new_category_path
    assert_response :success
  end

  test "shold get show" do
    get(:show, category_path(@category))
    assert_response :success
  end
end
