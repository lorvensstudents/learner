require 'test_helper'

class LearnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learner = learners(:one)
  end

  test "should get index" do
    get learners_url
    assert_response :success
  end

  test "should get new" do
    get new_learner_url
    assert_response :success
  end

  test "should create learner" do
    assert_difference('Learner.count') do
      post learners_url, params: { learner: { duration: @learner.duration, fee: @learner.fee, name: @learner.name, technology: @learner.technology } }
    end

    assert_redirected_to learner_url(Learner.last)
  end

  test "should show learner" do
    get learner_url(@learner)
    assert_response :success
  end

  test "should get edit" do
    get edit_learner_url(@learner)
    assert_response :success
  end

  test "should update learner" do
    patch learner_url(@learner), params: { learner: { duration: @learner.duration, fee: @learner.fee, name: @learner.name, technology: @learner.technology } }
    assert_redirected_to learner_url(@learner)
  end

  test "should destroy learner" do
    assert_difference('Learner.count', -1) do
      delete learner_url(@learner)
    end

    assert_redirected_to learners_url
  end
end
