require 'test_helper'

class ScrappingsControllerTest < ActionController::TestCase
  setup do
    @scrapping = scrappings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scrappings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scrapping" do
    assert_difference('Scrapping.count') do
      post :create, scrapping: { url: @scrapping.url }
    end

    assert_redirected_to scrapping_path(assigns(:scrapping))
  end

  test "should show scrapping" do
    get :show, id: @scrapping
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scrapping
    assert_response :success
  end

  test "should update scrapping" do
    put :update, id: @scrapping, scrapping: { url: @scrapping.url }
    assert_redirected_to scrapping_path(assigns(:scrapping))
  end

  test "should destroy scrapping" do
    assert_difference('Scrapping.count', -1) do
      delete :destroy, id: @scrapping
    end

    assert_redirected_to scrappings_path
  end
end
