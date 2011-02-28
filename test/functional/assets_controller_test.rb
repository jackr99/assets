require 'test_helper'

class AssetsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Assets.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Assets.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Assets.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to assets_url(assigns(:assets))
  end

  def test_edit
    get :edit, :id => Assets.first
    assert_template 'edit'
  end

  def test_update_invalid
    Assets.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Assets.first
    assert_template 'edit'
  end

  def test_update_valid
    Assets.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Assets.first
    assert_redirected_to assets_url(assigns(:assets))
  end

  def test_destroy
    assets = Assets.first
    delete :destroy, :id => assets
    assert_redirected_to assets_url
    assert !Assets.exists?(assets.id)
  end
end
