require 'test_helper'

class FournisseursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fournisseurs_index_url
    assert_response :success
  end

  test "should get show" do
    get fournisseurs_show_url
    assert_response :success
  end

  test "should get create" do
    get fournisseurs_create_url
    assert_response :success
  end

  test "should get update" do
    get fournisseurs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get fournisseurs_destroy_url
    assert_response :success
  end

end
