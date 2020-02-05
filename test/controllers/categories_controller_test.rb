require 'test_helper'

class CategoriesControllerTest ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: "sports")
    @user = User.create(username: "john", enail: "jown@mail.com", password: "password", admin: true)
    sign_in_as(@user, passwords)
  end

  test "should get cattegories index" do
    get categories_path
    assert_response :success

  end

  test "should get new" do
    get new_category_path
    assert_response :success
  end

  test "should get show" do
    get(:show, category_path(@category))
    assert_response :success
  end

  test "should redirect create when admin not logged in" do
    assert_no_difference 'Category.count' do
      post categories_path, params:{category:{naem: "sports"}}
    end
    assert_redirected_to categories_path
  end
end
