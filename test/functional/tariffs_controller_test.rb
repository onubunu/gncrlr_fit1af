require 'test_helper'

class TariffsControllerTest < ActionController::TestCase
  setup do
    @tariff = tariffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tariffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tariff" do
    assert_difference('Tariff.count') do
      post :create, tariff: { net_id: @tariff.net_id, t_comment: @tariff.t_comment, t_commission: @tariff.t_commission, t_costs: @tariff.t_costs, t_info: @tariff.t_info, t_name: @tariff.t_name, t_profit: @tariff.t_profit }
    end

    assert_redirected_to tariff_path(assigns(:tariff))
  end

  test "should show tariff" do
    get :show, id: @tariff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tariff
    assert_response :success
  end

  test "should update tariff" do
    put :update, id: @tariff, tariff: { net_id: @tariff.net_id, t_comment: @tariff.t_comment, t_commission: @tariff.t_commission, t_costs: @tariff.t_costs, t_info: @tariff.t_info, t_name: @tariff.t_name, t_profit: @tariff.t_profit }
    assert_redirected_to tariff_path(assigns(:tariff))
  end

  test "should destroy tariff" do
    assert_difference('Tariff.count', -1) do
      delete :destroy, id: @tariff
    end

    assert_redirected_to tariffs_path
  end
end
