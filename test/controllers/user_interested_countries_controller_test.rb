require "test_helper"

class UserInterestedCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_interested_country = user_interested_countries(:one)
  end

  test "should get index" do
    get user_interested_countries_url
    assert_response :success
  end

  test "should get new" do
    get new_user_interested_country_url
    assert_response :success
  end

  test "should create user_interested_country" do
    assert_difference("UserInterestedCountry.count") do
      post user_interested_countries_url, params: { user_interested_country: { country_id: @user_interested_country.country_id, user_id: @user_interested_country.user_id } }
    end

    assert_redirected_to user_interested_country_url(UserInterestedCountry.last)
  end

  test "should show user_interested_country" do
    get user_interested_country_url(@user_interested_country)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_interested_country_url(@user_interested_country)
    assert_response :success
  end

  test "should update user_interested_country" do
    patch user_interested_country_url(@user_interested_country), params: { user_interested_country: { country_id: @user_interested_country.country_id, user_id: @user_interested_country.user_id } }
    assert_redirected_to user_interested_country_url(@user_interested_country)
  end

  test "should destroy user_interested_country" do
    assert_difference("UserInterestedCountry.count", -1) do
      delete user_interested_country_url(@user_interested_country)
    end

    assert_redirected_to user_interested_countries_url
  end
end
