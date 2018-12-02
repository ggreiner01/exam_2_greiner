require 'test_helper'

class AdminstrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adminstration = adminstrations(:one)
  end

  test "should get index" do
    get adminstrations_url
    assert_response :success
  end

  test "should get new" do
    get new_adminstration_url
    assert_response :success
  end

  test "should create adminstration" do
    assert_difference('Adminstration.count') do
      post adminstrations_url, params: { adminstration: { name: @adminstration.name, phone_number: @adminstration.phone_number, state: @adminstration.state, zip: @adminstration.zip } }
    end

    assert_redirected_to adminstration_url(Adminstration.last)
  end

  test "should show adminstration" do
    get adminstration_url(@adminstration)
    assert_response :success
  end

  test "should get edit" do
    get edit_adminstration_url(@adminstration)
    assert_response :success
  end

  test "should update adminstration" do
    patch adminstration_url(@adminstration), params: { adminstration: { name: @adminstration.name, phone_number: @adminstration.phone_number, state: @adminstration.state, zip: @adminstration.zip } }
    assert_redirected_to adminstration_url(@adminstration)
  end

  test "should destroy adminstration" do
    assert_difference('Adminstration.count', -1) do
      delete adminstration_url(@adminstration)
    end

    assert_redirected_to adminstrations_url
  end
end
