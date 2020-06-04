require "application_system_test_case"

class UnitMeasurementsTest < ApplicationSystemTestCase
  setup do
    @unit_measurement = unit_measurements(:one)
  end

  test "visiting the index" do
    visit unit_measurements_url
    assert_selector "h1", text: "Unit Measurements"
  end

  test "creating a Unit measurement" do
    visit unit_measurements_url
    click_on "New Unit Measurement"

    fill_in "Description", with: @unit_measurement.description
    fill_in "Unit name", with: @unit_measurement.unit_name
    click_on "Create Unit measurement"

    assert_text "Unit measurement was successfully created"
    click_on "Back"
  end

  test "updating a Unit measurement" do
    visit unit_measurements_url
    click_on "Edit", match: :first

    fill_in "Description", with: @unit_measurement.description
    fill_in "Unit name", with: @unit_measurement.unit_name
    click_on "Update Unit measurement"

    assert_text "Unit measurement was successfully updated"
    click_on "Back"
  end

  test "destroying a Unit measurement" do
    visit unit_measurements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unit measurement was successfully destroyed"
  end
end
