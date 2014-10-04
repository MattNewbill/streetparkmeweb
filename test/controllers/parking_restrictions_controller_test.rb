require 'test_helper'

class ParkingRestrictionsControllerTest < ActionController::TestCase
  setup do
    @parking_restriction = parking_restrictions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parking_restrictions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parking_restriction" do
    assert_difference('ParkingRestriction.count') do
      post :create, parking_restriction: { active_friday: @parking_restriction.active_friday, active_monday: @parking_restriction.active_monday, active_saturday: @parking_restriction.active_saturday, active_sunday: @parking_restriction.active_sunday, active_thursday: @parking_restriction.active_thursday, active_tuesday: @parking_restriction.active_tuesday, active_wednesday: @parking_restriction.active_wednesday, beg_time_restriction: @parking_restriction.beg_time_restriction, cost_per_hour: @parking_restriction.cost_per_hour, end_time_restriction: @parking_restriction.end_time_restriction, hour_time_restriction_duration: @parking_restriction.hour_time_restriction_duration, minute_time_restriction_durection: @parking_restriction.minute_time_restriction_durection, parking_spot_id: @parking_restriction.parking_spot_id, parking_spots_id: @parking_restriction.parking_spots_id }
    end

    assert_redirected_to parking_restriction_path(assigns(:parking_restriction))
  end

  test "should show parking_restriction" do
    get :show, id: @parking_restriction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parking_restriction
    assert_response :success
  end

  test "should update parking_restriction" do
    patch :update, id: @parking_restriction, parking_restriction: { active_friday: @parking_restriction.active_friday, active_monday: @parking_restriction.active_monday, active_saturday: @parking_restriction.active_saturday, active_sunday: @parking_restriction.active_sunday, active_thursday: @parking_restriction.active_thursday, active_tuesday: @parking_restriction.active_tuesday, active_wednesday: @parking_restriction.active_wednesday, beg_time_restriction: @parking_restriction.beg_time_restriction, cost_per_hour: @parking_restriction.cost_per_hour, end_time_restriction: @parking_restriction.end_time_restriction, hour_time_restriction_duration: @parking_restriction.hour_time_restriction_duration, minute_time_restriction_durection: @parking_restriction.minute_time_restriction_durection, parking_spot_id: @parking_restriction.parking_spot_id, parking_spots_id: @parking_restriction.parking_spots_id }
    assert_redirected_to parking_restriction_path(assigns(:parking_restriction))
  end

  test "should destroy parking_restriction" do
    assert_difference('ParkingRestriction.count', -1) do
      delete :destroy, id: @parking_restriction
    end

    assert_redirected_to parking_restrictions_path
  end
end
