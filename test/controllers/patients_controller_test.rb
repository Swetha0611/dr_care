require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get patients_new_url
    assert_response :success
  end

  test "should get create" do
    get patients_create_url
    assert_response :success
  end

  test "should get index" do
    get patients_index_url
    assert_response :success
  end
end
