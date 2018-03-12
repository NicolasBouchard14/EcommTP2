require 'test_helper'

class ProduitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get produits_index_url
    assert_response :success
  end

  test "should get show" do
    get produits_show_url
    assert_response :success
  end

  test "should get create" do
    get produits_create_url
    assert_response :success
  end

  test "should get update" do
    get produits_update_url
    assert_response :success
  end

  test "should get destroy" do
    get produits_destroy_url
    assert_response :success
  end

end
