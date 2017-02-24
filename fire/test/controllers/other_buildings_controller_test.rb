require 'test_helper'

class OtherBuildingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @other_building = other_buildings(:one)
  end

  test "should get index" do
    get other_buildings_url
    assert_response :success
  end

  test "should get new" do
    get new_other_building_url
    assert_response :success
  end

  test "should create other_building" do
    assert_difference('OtherBuilding.count') do
      post other_buildings_url, params: { other_building: { Breakroom: @other_building.Breakroom, FID: @other_building.FID, Restroom: @other_building.Restroom, TelephoneRoom: @other_building.TelephoneRoom } }
    end

    assert_redirected_to other_building_url(OtherBuilding.last)
  end

  test "should show other_building" do
    get other_building_url(@other_building)
    assert_response :success
  end

  test "should get edit" do
    get edit_other_building_url(@other_building)
    assert_response :success
  end

  test "should update other_building" do
    patch other_building_url(@other_building), params: { other_building: { Breakroom: @other_building.Breakroom, FID: @other_building.FID, Restroom: @other_building.Restroom, TelephoneRoom: @other_building.TelephoneRoom } }
    assert_redirected_to other_building_url(@other_building)
  end

  test "should destroy other_building" do
    assert_difference('OtherBuilding.count', -1) do
      delete other_building_url(@other_building)
    end

    assert_redirected_to other_buildings_url
  end
end
