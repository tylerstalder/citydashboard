require 'test_helper'

class SettingsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Settings.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Settings.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Settings.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to settings_url(assigns(:settings))
  end
  
  def test_edit
    get :edit, :id => Settings.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Settings.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Settings.first
    assert_template 'edit'
  end

  def test_update_valid
    Settings.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Settings.first
    assert_redirected_to settings_url(assigns(:settings))
  end
  
  def test_destroy
    settings = Settings.first
    delete :destroy, :id => settings
    assert_redirected_to settings_url
    assert !Settings.exists?(settings.id)
  end
end
