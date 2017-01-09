require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get posts_new_url
    assert_response :success
  end

  test "should get index" do
    get posts_index_url
    assert_response :success
  end

  test "should get show" do
    get posts_show_url
    assert_response :success
  end

  test "should get guide" do
    get posts_guide_url
    assert_response :success
  end

  test "should get faq" do
    get posts_faq_url
    assert_response :success
  end

  test "should get contact" do
    get posts_contact_url
    assert_response :success
  end

  test "should get help" do
    get posts_help_url
    assert_response :success
  end

end
