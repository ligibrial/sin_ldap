require 'test_helper'

class InvalidTokensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invalid_token = invalid_tokens(:one)
  end

  test "should get index" do
    get invalid_tokens_url, as: :json
    assert_response :success
  end

  test "should create invalid_token" do
    assert_difference('InvalidToken.count') do
      post invalid_tokens_url, params: { invalid_token: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show invalid_token" do
    get invalid_token_url(@invalid_token), as: :json
    assert_response :success
  end

  test "should update invalid_token" do
    patch invalid_token_url(@invalid_token), params: { invalid_token: {  } }, as: :json
    assert_response 200
  end

  test "should destroy invalid_token" do
    assert_difference('InvalidToken.count', -1) do
      delete invalid_token_url(@invalid_token), as: :json
    end

    assert_response 204
  end
end
