require 'test_helper'

class ErabatsControllerTest < ActionController::TestCase
  setup do
    @erabat = erabats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:erabats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create erabat" do
    assert_difference('Erabat.count') do
      post :create, erabat: {  }
    end

    assert_redirected_to erabat_path(assigns(:erabat))
  end

  test "should show erabat" do
    get :show, id: @erabat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @erabat
    assert_response :success
  end

  test "should update erabat" do
    put :update, id: @erabat, erabat: {  }
    assert_redirected_to erabat_path(assigns(:erabat))
  end

  test "should destroy erabat" do
    assert_difference('Erabat.count', -1) do
      delete :destroy, id: @erabat
    end

    assert_redirected_to erabats_path
  end
end
