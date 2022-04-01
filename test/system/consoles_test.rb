require "application_system_test_case"

class ConsolesTest < ApplicationSystemTestCase
  setup do
    @console = consoles(:one)
  end

  test "visiting the index" do
    visit consoles_url
    assert_selector "h1", text: "Consoles"
  end

  test "should create console" do
    visit consoles_url
    click_on "New console"

    fill_in "Colour", with: @console.colour
    fill_in "Manufacturer", with: @console.manufacturer
    fill_in "Name", with: @console.name
    fill_in "Price", with: @console.price
    fill_in "Status", with: @console.status
    fill_in "Stock", with: @console.stock
    click_on "Create Console"

    assert_text "Console was successfully created"
    click_on "Back"
  end

  test "should update Console" do
    visit console_url(@console)
    click_on "Edit this console", match: :first

    fill_in "Colour", with: @console.colour
    fill_in "Manufacturer", with: @console.manufacturer
    fill_in "Name", with: @console.name
    fill_in "Price", with: @console.price
    fill_in "Status", with: @console.status
    fill_in "Stock", with: @console.stock
    click_on "Update Console"

    assert_text "Console was successfully updated"
    click_on "Back"
  end

  test "should destroy Console" do
    visit console_url(@console)
    click_on "Destroy this console", match: :first

    assert_text "Console was successfully destroyed"
  end
end
