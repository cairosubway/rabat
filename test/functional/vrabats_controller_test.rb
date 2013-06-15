require 'test_helper'

class VrabatsControllerTest < ActionController::TestCase
  setup do
    @vrabat = vrabats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vrabats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vrabat" do
    assert_difference('Vrabat.count') do
      post :create, vrabat: {  }
    end

    assert_redirected_to vrabat_path(assigns(:vrabat))
  end

  test "should show vrabat" do
    get :show, id: @vrabat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vrabat
    assert_response :success
  end

  test "should update vrabat" do
    put :update, id: @vrabat, vrabat: {  }
    assert_redirected_to vrabat_path(assigns(:vrabat))
  end

  test "should destroy vrabat" do
    assert_difference('Vrabat.count', -1) do
      delete :destroy, id: @vrabat
    end

    assert_redirected_to vrabats_path
  end
end
