require 'test_helper'

class UshasControllerTest < ActionController::TestCase
  setup do
    @usha = ushas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ushas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usha" do
    assert_difference('Usha.count') do
      post :create, usha: { category: @usha.category, explanation: @usha.explanation, recipe: @usha.recipe, title: @usha.title, type: @usha.type, video: @usha.video }
    end

    assert_redirected_to usha_path(assigns(:usha))
  end

  test "should show usha" do
    get :show, id: @usha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usha
    assert_response :success
  end

  test "should update usha" do
    put :update, id: @usha, usha: { category: @usha.category, explanation: @usha.explanation, recipe: @usha.recipe, title: @usha.title, type: @usha.type, video: @usha.video }
    assert_redirected_to usha_path(assigns(:usha))
  end

  test "should destroy usha" do
    assert_difference('Usha.count', -1) do
      delete :destroy, id: @usha
    end

    assert_redirected_to ushas_path
  end
end
