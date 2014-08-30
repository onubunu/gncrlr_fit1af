require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { agbs: @order.agbs, bank: @order.bank, bankaccount: @order.bankaccount, bankzip: @order.bankzip, o_date: @order.o_date, o_price: @order.o_price, order_no: @order.order_no, phone_id: @order.phone_id, tariff_id: @order.tariff_id, user_id: @order.user_id }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { agbs: @order.agbs, bank: @order.bank, bankaccount: @order.bankaccount, bankzip: @order.bankzip, o_date: @order.o_date, o_price: @order.o_price, order_no: @order.order_no, phone_id: @order.phone_id, tariff_id: @order.tariff_id, user_id: @order.user_id }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
