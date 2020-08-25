require 'test_helper'

class BusinessCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get business_cards_new_url
    assert_response :success
  end

  test "should get create" do
    get business_cards_create_url
    assert_response :success
  end

end
