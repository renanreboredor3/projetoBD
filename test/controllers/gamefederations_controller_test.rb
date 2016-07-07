require 'test_helper'

class GamefederationsControllerTest < ActionController::TestCase
  setup do
    @gamefederation = gamefederations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamefederations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gamefederation" do
    assert_difference('Gamefederation.count') do
      post :create, gamefederation: { federation_id: @gamefederation.federation_id, game_id: @gamefederation.game_id }
    end

    assert_redirected_to gamefederation_path(assigns(:gamefederation))
  end

  test "should show gamefederation" do
    get :show, id: @gamefederation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gamefederation
    assert_response :success
  end

  test "should update gamefederation" do
    patch :update, id: @gamefederation, gamefederation: { federation_id: @gamefederation.federation_id, game_id: @gamefederation.game_id }
    assert_redirected_to gamefederation_path(assigns(:gamefederation))
  end

  test "should destroy gamefederation" do
    assert_difference('Gamefederation.count', -1) do
      delete :destroy, id: @gamefederation
    end

    assert_redirected_to gamefederations_path
  end
end
