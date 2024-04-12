require "test_helper"

class StudyLanguagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study_language = study_languages(:one)
  end

  test "should get index" do
    get study_languages_url
    assert_response :success
  end

  test "should get new" do
    get new_study_language_url
    assert_response :success
  end

  test "should create study_language" do
    assert_difference("StudyLanguage.count") do
      post study_languages_url, params: { study_language: { language_id: @study_language.language_id, learning_level_id: @study_language.learning_level_id, user_id: @study_language.user_id } }
    end

    assert_redirected_to study_language_url(StudyLanguage.last)
  end

  test "should show study_language" do
    get study_language_url(@study_language)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_language_url(@study_language)
    assert_response :success
  end

  test "should update study_language" do
    patch study_language_url(@study_language), params: { study_language: { language_id: @study_language.language_id, learning_level_id: @study_language.learning_level_id, user_id: @study_language.user_id } }
    assert_redirected_to study_language_url(@study_language)
  end

  test "should destroy study_language" do
    assert_difference("StudyLanguage.count", -1) do
      delete study_language_url(@study_language)
    end

    assert_redirected_to study_languages_url
  end
end
