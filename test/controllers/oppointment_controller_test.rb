require "test_helper"

class OppointmentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get oppointment_new_url
    assert_response :success
  end

  test "should get create" do
    get oppointment_create_url
    assert_response :success
  end

  test "should get index" do
    get oppointment_index_url
    assert_response :success
  end
end
