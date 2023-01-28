require 'test_helper'

class MemosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get memos_index_url
    assert_response :success
  end

  test "should get new" do
    get memos_new_url
    assert_response :success
  end

  test "should get create" do
    get memos_create_url
    assert_response :success
  end

end
