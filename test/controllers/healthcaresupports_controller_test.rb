require 'test_helper'

class HealthcaresupportsControllerTest < ActionController::TestCase
  setup do
    @healthcaresupport = healthcaresupports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:healthcaresupports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create healthcaresupport" do
    assert_difference('Healthcaresupport.count') do
      post :create, healthcaresupport: { federation_id: @healthcaresupport.federation_id, medic_id: @healthcaresupport.medic_id }
    end

    assert_redirected_to healthcaresupport_path(assigns(:healthcaresupport))
  end

  test "should show healthcaresupport" do
    get :show, id: @healthcaresupport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @healthcaresupport
    assert_response :success
  end

  test "should update healthcaresupport" do
    patch :update, id: @healthcaresupport, healthcaresupport: { federation_id: @healthcaresupport.federation_id, medic_id: @healthcaresupport.medic_id }
    assert_redirected_to healthcaresupport_path(assigns(:healthcaresupport))
  end

  test "should destroy healthcaresupport" do
    assert_difference('Healthcaresupport.count', -1) do
      delete :destroy, id: @healthcaresupport
    end

    assert_redirected_to healthcaresupports_path
  end
end
