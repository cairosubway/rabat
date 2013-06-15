require 'test_helper'

class RrabatsControllerTest < ActionController::TestCase
  setup do
    @rrabat = rrabats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rrabats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rrabat" do
    assert_difference('Rrabat.count') do
      post :create, rrabat: {  }
    end

    assert_redirected_to rrabat_path(assigns(:rrabat))
  end

  test "should show rrabat" do
    get :show, id: @rrabat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rrabat
    assert_response :success
  end

  test "should update rrabat" do
    put :update, id: @rrabat, rrabat: {  }
    assert_redirected_to rrabat_path(assigns(:rrabat))
  end

  test "should destroy rrabat" do
    assert_difference('Rrabat.count', -1) do
      delete :destroy, id: @rrabat
    end

    assert_redirected_to rrabats_path
  end
end
