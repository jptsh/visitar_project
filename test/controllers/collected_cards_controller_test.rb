require 'test_helper'

class CollectedCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get collected_cards_index_url
    assert_response :success
  end

  test "should get show" do
    get collected_cards_show_url
    assert_response :success
  end

  test "should get new" do
    get collected_cards_new_url
    assert_response :success
  end

  test "should get create" do
    get collected_cards_create_url
    assert_response :success
  end

end
