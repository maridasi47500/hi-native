require "application_system_test_case"

class LearningLevelsTest < ApplicationSystemTestCase
  setup do
    @learning_level = learning_levels(:one)
  end

  test "visiting the index" do
    visit learning_levels_url
    assert_selector "h1", text: "Learning levels"
  end

  test "should create learning level" do
    visit learning_levels_url
    click_on "New learning level"

    fill_in "Description", with: @learning_level.description
    fill_in "Name", with: @learning_level.name
    click_on "Create Learning level"

    assert_text "Learning level was successfully created"
    click_on "Back"
  end

  test "should update Learning level" do
    visit learning_level_url(@learning_level)
    click_on "Edit this learning level", match: :first

    fill_in "Description", with: @learning_level.description
    fill_in "Name", with: @learning_level.name
    click_on "Update Learning level"

    assert_text "Learning level was successfully updated"
    click_on "Back"
  end

  test "should destroy Learning level" do
    visit learning_level_url(@learning_level)
    click_on "Destroy this learning level", match: :first

    assert_text "Learning level was successfully destroyed"
  end
end
