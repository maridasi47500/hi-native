require "test_helper"

class NativeLanguagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @native_language = native_languages(:one)
  end

  test "should get index" do
    get native_languages_url
    assert_response :success
  end

  test "should get new" do
    get new_native_language_url
    assert_response :success
  end

  test "should create native_language" do
    assert_difference("NativeLanguage.count") do
      post native_languages_url, params: { native_language: { language_id: @native_language.language_id, learning_level_id: @native_language.learning_level_id, user_id: @native_language.user_id } }
    end

    assert_redirected_to native_language_url(NativeLanguage.last)
  end

  test "should show native_language" do
    get native_language_url(@native_language)
    assert_response :success
  end

  test "should get edit" do
    get edit_native_language_url(@native_language)
    assert_response :success
  end

  test "should update native_language" do
    patch native_language_url(@native_language), params: { native_language: { language_id: @native_language.language_id, learning_level_id: @native_language.learning_level_id, user_id: @native_language.user_id } }
    assert_redirected_to native_language_url(@native_language)
  end

  test "should destroy native_language" do
    assert_difference("NativeLanguage.count", -1) do
      delete native_language_url(@native_language)
    end

    assert_redirected_to native_languages_url
  end
end
