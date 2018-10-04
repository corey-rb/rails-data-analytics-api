require 'test_helper'

class V1::AppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @v1_app = v1_apps(:one)
  end

  test "should get index" do
    get v1_apps_url, as: :json
    assert_response :success
  end

  test "should create v1_app" do
    assert_difference('V1::App.count') do
      post v1_apps_url, params: { v1_app: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show v1_app" do
    get v1_app_url(@v1_app), as: :json
    assert_response :success
  end

  test "should update v1_app" do
    patch v1_app_url(@v1_app), params: { v1_app: {  } }, as: :json
    assert_response 200
  end

  test "should destroy v1_app" do
    assert_difference('V1::App.count', -1) do
      delete v1_app_url(@v1_app), as: :json
    end

    assert_response 204
  end
end
