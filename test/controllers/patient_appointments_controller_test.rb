require "test_helper"

class PatientAppointmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get patient_appointments_new_url
    assert_response :success
  end

  test "should get create" do
    get patient_appointments_create_url
    assert_response :success
  end
end
