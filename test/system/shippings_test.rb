require "application_system_test_case"

class ShippingsTest < ApplicationSystemTestCase
  setup do
    @shipping = shippings(:one)
  end

  test "visiting the index" do
    visit shippings_url
    assert_selector "h1", text: "Shippings"
  end

  test "should create shipping" do
    visit shippings_url
    click_on "New shipping"

    fill_in "Name", with: @shipping.name
    fill_in "Status", with: @shipping.status
    fill_in "Value", with: @shipping.value
    click_on "Create Shipping"

    assert_text "Shipping was successfully created"
    click_on "Back"
  end

  test "should update Shipping" do
    visit shipping_url(@shipping)
    click_on "Edit this shipping", match: :first

    fill_in "Name", with: @shipping.name
    fill_in "Status", with: @shipping.status
    fill_in "Value", with: @shipping.value
    click_on "Update Shipping"

    assert_text "Shipping was successfully updated"
    click_on "Back"
  end

  test "should destroy Shipping" do
    visit shipping_url(@shipping)
    click_on "Destroy this shipping", match: :first

    assert_text "Shipping was successfully destroyed"
  end
end
