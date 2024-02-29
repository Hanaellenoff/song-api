require "test_helper"

class SongsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/songs.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Song.count, data.length
  end
end
