require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest

  def setup
    @categoy = Category.create(name: "sports")
    @categoy2 = Category.create(name: "programming")
  end

  test "should show categories listing" do
    get categories_path
    assert_template 'categories/index'
    assert_select "a[href=?]", category_path(@categoy), text: @category.name
    assert_select "a[href=?]", category_path(@category2), text: @category2.name
  end
end
