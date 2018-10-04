require 'test_helper'

class V2::AppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @v2_app = v2_apps(:one)
  end

  test "should get index" do
    get v2_apps_url, as: :json
    assert_response :success
  end

  test "should create v2_app" do
    assert_difference('V2::App.count') do
      post v2_apps_url, params: { v2_app: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show v2_app" do
    get v2_app_url(@v2_app), as: :json
    assert_response :success
  end

  test "should update v2_app" do
    patch v2_app_url(@v2_app), params: { v2_app: {  } }, as: :json
    assert_response 200
  end

  test "should destroy v2_app" do
    assert_difference('V2::App.count', -1) do
      delete v2_app_url(@v2_app), as: :json
    end

    assert_response 204
  end
end
