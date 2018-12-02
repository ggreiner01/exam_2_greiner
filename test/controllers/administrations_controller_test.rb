require 'test_helper'

class AdministrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @administration = administrations(:one)
  end

  test "should get index" do
    get administrations_url
    assert_response :success
  end

  test "should get new" do
    get new_administration_url
    assert_response :success
  end

  test "should create administration" do
    assert_difference('Administration.count') do
      post administrations_url, params: { administration: { name: @administration.name, phone_number: @administration.phone_number, state: @administration.state, zip: @administration.zip } }
    end

    assert_redirected_to administration_url(Administration.last)
  end

  test "should show administration" do
    get administration_url(@administration)
    assert_response :success
  end

  test "should get edit" do
    get edit_administration_url(@administration)
    assert_response :success
  end

  test "should update administration" do
    patch administration_url(@administration), params: { administration: { name: @administration.name, phone_number: @administration.phone_number, state: @administration.state, zip: @administration.zip } }
    assert_redirected_to administration_url(@administration)
  end

  test "should destroy administration" do
    assert_difference('Administration.count', -1) do
      delete administration_url(@administration)
    end

    assert_redirected_to administrations_url
  end
end
