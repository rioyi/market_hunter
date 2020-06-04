require 'test_helper'

class UnitMeasurementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_measurement = unit_measurements(:one)
  end

  test "should get index" do
    get unit_measurements_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_measurement_url
    assert_response :success
  end

  test "should create unit_measurement" do
    assert_difference('UnitMeasurement.count') do
      post unit_measurements_url, params: { unit_measurement: { description: @unit_measurement.description, unit_name: @unit_measurement.unit_name } }
    end

    assert_redirected_to unit_measurement_url(UnitMeasurement.last)
  end

  test "should show unit_measurement" do
    get unit_measurement_url(@unit_measurement)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_measurement_url(@unit_measurement)
    assert_response :success
  end

  test "should update unit_measurement" do
    patch unit_measurement_url(@unit_measurement), params: { unit_measurement: { description: @unit_measurement.description, unit_name: @unit_measurement.unit_name } }
    assert_redirected_to unit_measurement_url(@unit_measurement)
  end

  test "should destroy unit_measurement" do
    assert_difference('UnitMeasurement.count', -1) do
      delete unit_measurement_url(@unit_measurement)
    end

    assert_redirected_to unit_measurements_url
  end
end
