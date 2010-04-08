require 'test_helper'

class GalleryAssetsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gallery_assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gallery_asset" do
    assert_difference('GalleryAsset.count') do
      post :create, :gallery_asset => { }
    end

    assert_redirected_to gallery_asset_path(assigns(:gallery_asset))
  end

  test "should show gallery_asset" do
    get :show, :id => gallery_assets(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => gallery_assets(:one).to_param
    assert_response :success
  end

  test "should update gallery_asset" do
    put :update, :id => gallery_assets(:one).to_param, :gallery_asset => { }
    assert_redirected_to gallery_asset_path(assigns(:gallery_asset))
  end

  test "should destroy gallery_asset" do
    assert_difference('GalleryAsset.count', -1) do
      delete :destroy, :id => gallery_assets(:one).to_param
    end

    assert_redirected_to gallery_assets_path
  end
end
