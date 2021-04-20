require 'test_helper'

class StudentDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_details_index_url
    assert_response :success
  end

  test "should get new" do
    get student_details_new_url
    assert_response :success
  end

  test "should get show" do
    get student_details_show_url
    assert_response :success
  end

  test "should get edit" do
    get student_details_edit_url
    assert_response :success
  end

end
