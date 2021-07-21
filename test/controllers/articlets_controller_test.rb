require 'test_helper'

class ArticletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articlet = articlets(:one)
  end

  test "should get index" do
    get articlets_url
    assert_response :success
  end

  test "should get new" do
    get new_articlet_url
    assert_response :success
  end

  test "should create articlet" do
    assert_difference('Articlet.count') do
      post articlets_url, params: { articlet: { body: @articlet.body, image_data: @articlet.image_data, title: @articlet.title } }
    end

    assert_redirected_to articlet_url(Articlet.last)
  end

  test "should show articlet" do
    get articlet_url(@articlet)
    assert_response :success
  end

  test "should get edit" do
    get edit_articlet_url(@articlet)
    assert_response :success
  end

  test "should update articlet" do
    patch articlet_url(@articlet), params: { articlet: { body: @articlet.body, image_data: @articlet.image_data, title: @articlet.title } }
    assert_redirected_to articlet_url(@articlet)
  end

  test "should destroy articlet" do
    assert_difference('Articlet.count', -1) do
      delete articlet_url(@articlet)
    end

    assert_redirected_to articlets_url
  end
end
