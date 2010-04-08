require 'test_helper'

class AssestsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assest" do
    assert_difference('Assest.count') do
      post :create, :assest => { }
    end

    assert_redirected_to assest_path(assigns(:assest))
  end

  test "should show assest" do
    get :show, :id => assests(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => assests(:one).to_param
    assert_response :success
  end

  test "should update assest" do
    put :update, :id => assests(:one).to_param, :assest => { }
    assert_redirected_to assest_path(assigns(:assest))
  end

  test "should destroy assest" do
    assert_difference('Assest.count', -1) do
      delete :destroy, :id => assests(:one).to_param
    end

    assert_redirected_to assests_path
  end
end
