require 'test_helper'

class CompetitorgamesControllerTest < ActionController::TestCase
  setup do
    @competitorgame = competitorgames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competitorgames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competitorgame" do
    assert_difference('Competitorgame.count') do
      post :create, competitorgame: { competitor_id: @competitorgame.competitor_id, game_id: @competitorgame.game_id }
    end

    assert_redirected_to competitorgame_path(assigns(:competitorgame))
  end

  test "should show competitorgame" do
    get :show, id: @competitorgame
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competitorgame
    assert_response :success
  end

  test "should update competitorgame" do
    patch :update, id: @competitorgame, competitorgame: { competitor_id: @competitorgame.competitor_id, game_id: @competitorgame.game_id }
    assert_redirected_to competitorgame_path(assigns(:competitorgame))
  end

  test "should destroy competitorgame" do
    assert_difference('Competitorgame.count', -1) do
      delete :destroy, id: @competitorgame
    end

    assert_redirected_to competitorgames_path
  end
end
