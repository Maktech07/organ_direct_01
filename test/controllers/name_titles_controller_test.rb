require 'test_helper'

class NameTitlesControllerTest < ActionController::TestCase
  setup do
    @name_title = name_titles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:name_titles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create name_title" do
    assert_difference('NameTitle.count') do
      post :create, name_title: { title: @name_title.title }
    end

    assert_redirected_to name_title_path(assigns(:name_title))
  end

  test "should show name_title" do
    get :show, id: @name_title
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @name_title
    assert_response :success
  end

  test "should update name_title" do
    patch :update, id: @name_title, name_title: { title: @name_title.title }
    assert_redirected_to name_title_path(assigns(:name_title))
  end

  test "should destroy name_title" do
    assert_difference('NameTitle.count', -1) do
      delete :destroy, id: @name_title
    end

    assert_redirected_to name_titles_path
  end
end
