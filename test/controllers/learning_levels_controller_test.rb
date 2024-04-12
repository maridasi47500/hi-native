require "test_helper"

class LearningLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learning_level = learning_levels(:one)
  end

  test "should get index" do
    get learning_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_learning_level_url
    assert_response :success
  end

  test "should create learning_level" do
    assert_difference("LearningLevel.count") do
      post learning_levels_url, params: { learning_level: { description: @learning_level.description, name: @learning_level.name } }
    end

    assert_redirected_to learning_level_url(LearningLevel.last)
  end

  test "should show learning_level" do
    get learning_level_url(@learning_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_learning_level_url(@learning_level)
    assert_response :success
  end

  test "should update learning_level" do
    patch learning_level_url(@learning_level), params: { learning_level: { description: @learning_level.description, name: @learning_level.name } }
    assert_redirected_to learning_level_url(@learning_level)
  end

  test "should destroy learning_level" do
    assert_difference("LearningLevel.count", -1) do
      delete learning_level_url(@learning_level)
    end

    assert_redirected_to learning_levels_url
  end
end
