require "application_system_test_case"

class StudyLanguagesTest < ApplicationSystemTestCase
  setup do
    @study_language = study_languages(:one)
  end

  test "visiting the index" do
    visit study_languages_url
    assert_selector "h1", text: "Study languages"
  end

  test "should create study language" do
    visit study_languages_url
    click_on "New study language"

    fill_in "Language", with: @study_language.language_id
    fill_in "Learning level", with: @study_language.learning_level_id
    fill_in "User", with: @study_language.user_id
    click_on "Create Study language"

    assert_text "Study language was successfully created"
    click_on "Back"
  end

  test "should update Study language" do
    visit study_language_url(@study_language)
    click_on "Edit this study language", match: :first

    fill_in "Language", with: @study_language.language_id
    fill_in "Learning level", with: @study_language.learning_level_id
    fill_in "User", with: @study_language.user_id
    click_on "Update Study language"

    assert_text "Study language was successfully updated"
    click_on "Back"
  end

  test "should destroy Study language" do
    visit study_language_url(@study_language)
    click_on "Destroy this study language", match: :first

    assert_text "Study language was successfully destroyed"
  end
end
