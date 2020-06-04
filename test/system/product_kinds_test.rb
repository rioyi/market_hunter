require "application_system_test_case"

class ProductKindsTest < ApplicationSystemTestCase
  setup do
    @product_kind = product_kinds(:one)
  end

  test "visiting the index" do
    visit product_kinds_url
    assert_selector "h1", text: "Product Kinds"
  end

  test "creating a Product kind" do
    visit product_kinds_url
    click_on "New Product Kind"

    fill_in "Description", with: @product_kind.description
    fill_in "Name", with: @product_kind.name
    click_on "Create Product kind"

    assert_text "Product kind was successfully created"
    click_on "Back"
  end

  test "updating a Product kind" do
    visit product_kinds_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product_kind.description
    fill_in "Name", with: @product_kind.name
    click_on "Update Product kind"

    assert_text "Product kind was successfully updated"
    click_on "Back"
  end

  test "destroying a Product kind" do
    visit product_kinds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product kind was successfully destroyed"
  end
end
