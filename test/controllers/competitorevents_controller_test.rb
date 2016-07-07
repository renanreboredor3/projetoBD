require 'test_helper'

class CompetitoreventsControllerTest < ActionController::TestCase
  setup do
    @competitorevent = competitorevents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competitorevents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competitorevent" do
    assert_difference('Competitorevent.count') do
      post :create, competitorevent: { competitor_id: @competitorevent.competitor_id, event_id: @competitorevent.event_id }
    end

    assert_redirected_to competitorevent_path(assigns(:competitorevent))
  end

  test "should show competitorevent" do
    get :show, id: @competitorevent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competitorevent
    assert_response :success
  end

  test "should update competitorevent" do
    patch :update, id: @competitorevent, competitorevent: { competitor_id: @competitorevent.competitor_id, event_id: @competitorevent.event_id }
    assert_redirected_to competitorevent_path(assigns(:competitorevent))
  end

  test "should destroy competitorevent" do
    assert_difference('Competitorevent.count', -1) do
      delete :destroy, id: @competitorevent
    end

    assert_redirected_to competitorevents_path
  end
end
