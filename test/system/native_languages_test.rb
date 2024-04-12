require "application_system_test_case"

class NativeLanguagesTest < ApplicationSystemTestCase
  setup do
    @native_language = native_languages(:one)
  end

  test "visiting the index" do
    visit native_languages_url
    assert_selector "h1", text: "Native languages"
  end

  test "should create native language" do
    visit native_languages_url
    click_on "New native language"

    fill_in "Language", with: @native_language.language_id
    fill_in "Learning level", with: @native_language.learning_level_id
    fill_in "User", with: @native_language.user_id
    click_on "Create Native language"

    assert_text "Native language was successfully created"
    click_on "Back"
  end

  test "should update Native language" do
    visit native_language_url(@native_language)
    click_on "Edit this native language", match: :first

    fill_in "Language", with: @native_language.language_id
    fill_in "Learning level", with: @native_language.learning_level_id
    fill_in "User", with: @native_language.user_id
    click_on "Update Native language"

    assert_text "Native language was successfully updated"
    click_on "Back"
  end

  test "should destroy Native language" do
    visit native_language_url(@native_language)
    click_on "Destroy this native language", match: :first

    assert_text "Native language was successfully destroyed"
  end
end
