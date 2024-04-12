require "application_system_test_case"

class UserInterestedCountriesTest < ApplicationSystemTestCase
  setup do
    @user_interested_country = user_interested_countries(:one)
  end

  test "visiting the index" do
    visit user_interested_countries_url
    assert_selector "h1", text: "User interested countries"
  end

  test "should create user interested country" do
    visit user_interested_countries_url
    click_on "New user interested country"

    fill_in "Country", with: @user_interested_country.country_id
    fill_in "User", with: @user_interested_country.user_id
    click_on "Create User interested country"

    assert_text "User interested country was successfully created"
    click_on "Back"
  end

  test "should update User interested country" do
    visit user_interested_country_url(@user_interested_country)
    click_on "Edit this user interested country", match: :first

    fill_in "Country", with: @user_interested_country.country_id
    fill_in "User", with: @user_interested_country.user_id
    click_on "Update User interested country"

    assert_text "User interested country was successfully updated"
    click_on "Back"
  end

  test "should destroy User interested country" do
    visit user_interested_country_url(@user_interested_country)
    click_on "Destroy this user interested country", match: :first

    assert_text "User interested country was successfully destroyed"
  end
end
