require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
<<<<<<< HEAD
    # assert_template method to verify that the Home page is rendered using the correct view
    assert_select "a[href=?]", root_path, count: 1
    # assert_select method, which lets us test for the presence of a particular HTML tag
=======
    assert_select "a[href=?]", root_path, count: 1
>>>>>>> c817fe7 (Finish layout and routes)
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    end
end
