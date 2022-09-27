require "test_helper"

class ConcertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @concert = concerts(:one)
  end

  test "should get index" do
    get concerts_url, as: :json
    assert_response :success
  end

  test "should create concert" do
    assert_difference("Concert.count") do
      post concerts_url, params: { concert: { band: @concert.band, date: @concert.date, price: @concert.price } }, as: :json
    end

    assert_response :created
  end

  test "should show concert" do
    get concert_url(@concert), as: :json
    assert_response :success
  end

  test "should update concert" do
    patch concert_url(@concert), params: { concert: { band: @concert.band, date: @concert.date, price: @concert.price } }, as: :json
    assert_response :success
  end

  test "should destroy concert" do
    assert_difference("Concert.count", -1) do
      delete concert_url(@concert), as: :json
    end

    assert_response :no_content
  end
end
