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
      post :create, user: { address: @user.address, artist_type: @user.artist_type, city: @user.city, email: @user.email, extra_info: @user.extra_info, garden: @user.garden, genre: @user.genre, name: @user.name, own_drinks: @user.own_drinks, own_drinks_mandatory: @user.own_drinks_mandatory, pa_system: @user.pa_system, parking: @user.parking, parking_spaces: @user.parking_spaces, person_capacity: @user.person_capacity, phone: @user.phone, postal_code: @user.postal_code, references: @user.references, type: @user.type, vat: @user.vat, venue_type: @user.venue_type, wifi: @user.wifi, years_experience: @user.years_experience }
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
    patch :update, id: @user, user: { address: @user.address, artist_type: @user.artist_type, city: @user.city, email: @user.email, extra_info: @user.extra_info, garden: @user.garden, genre: @user.genre, name: @user.name, own_drinks: @user.own_drinks, own_drinks_mandatory: @user.own_drinks_mandatory, pa_system: @user.pa_system, parking: @user.parking, parking_spaces: @user.parking_spaces, person_capacity: @user.person_capacity, phone: @user.phone, postal_code: @user.postal_code, references: @user.references, type: @user.type, vat: @user.vat, venue_type: @user.venue_type, wifi: @user.wifi, years_experience: @user.years_experience }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
