require 'test_helper'

class FireStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fire_station = fire_stations(:one)
  end

  test "should get index" do
    get fire_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_fire_station_url
    assert_response :success
  end

  test "should create fire_station" do
    assert_difference('FireStation.count') do
      post fire_stations_url, params: { fire_station: { Address: @fire_station.Address, Bays: @fire_station.Bays, District: @fire_station.District, FID: @fire_station.FID, Houbli: @fire_station.Houbli, Name: @fire_station.Name, Range: @fire_station.Range, Taluk: @fire_station.Taluk, Zone: @fire_station.Zone } }
    end

    assert_redirected_to fire_station_url(FireStation.last)
  end

  test "should show fire_station" do
    get fire_station_url(@fire_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_fire_station_url(@fire_station)
    assert_response :success
  end

  test "should update fire_station" do
    patch fire_station_url(@fire_station), params: { fire_station: { Address: @fire_station.Address, Bays: @fire_station.Bays, District: @fire_station.District, FID: @fire_station.FID, Houbli: @fire_station.Houbli, Name: @fire_station.Name, Range: @fire_station.Range, Taluk: @fire_station.Taluk, Zone: @fire_station.Zone } }
    assert_redirected_to fire_station_url(@fire_station)
  end

  test "should destroy fire_station" do
    assert_difference('FireStation.count', -1) do
      delete fire_station_url(@fire_station)
    end

    assert_redirected_to fire_stations_url
  end
end
