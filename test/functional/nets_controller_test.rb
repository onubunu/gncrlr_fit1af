require 'test_helper'

class NetsControllerTest < ActionController::TestCase
  setup do
    @net = nets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create net" do
    assert_difference('Net.count') do
      post :create, net: { n_comment: @net.n_comment, n_logo_url: @net.n_logo_url, n_name: @net.n_name }
    end

    assert_redirected_to net_path(assigns(:net))
  end

  test "should show net" do
    get :show, id: @net
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @net
    assert_response :success
  end

  test "should update net" do
    put :update, id: @net, net: { n_comment: @net.n_comment, n_logo_url: @net.n_logo_url, n_name: @net.n_name }
    assert_redirected_to net_path(assigns(:net))
  end

  test "should destroy net" do
    assert_difference('Net.count', -1) do
      delete :destroy, id: @net
    end

    assert_redirected_to nets_path
  end
end
