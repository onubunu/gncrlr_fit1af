require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { bank: @user.bank, bankaccount: @user.bankaccount, bankzip: @user.bankzip, birth_date: @user.birth_date, city: @user.city, email: @user.email, password_digest: @user.password_digest, prename: @user.prename, street: @user.street, surname: @user.surname, title: @user.title, user_id: @user.user_id, zip: @user.zip }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { bank: @user.bank, bankaccount: @user.bankaccount, bankzip: @user.bankzip, birth_date: @user.birth_date, city: @user.city, email: @user.email, password_digest: @user.password_digest, prename: @user.prename, street: @user.street, surname: @user.surname, title: @user.title, user_id: @user.user_id, zip: @user.zip }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
