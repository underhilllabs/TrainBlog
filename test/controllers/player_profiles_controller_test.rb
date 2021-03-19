require 'test_helper'

class PlayerProfilesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get player_profiles_index_url
    assert_response :success
  end

  test 'should get show' do
    get player_profiles_show_url
    assert_response :success
  end

  test 'should get edit' do
    get player_profiles_edit_url
    assert_response :success
  end

  test 'should get create' do
    get player_profiles_create_url
    assert_response :success
  end

  test 'should get destroy' do
    get player_profiles_destroy_url
    assert_response :success
  end

  test 'should get update' do
    get player_profiles_update_url
    assert_response :success
  end

  test 'should get new' do
    get player_profiles_new_url
    assert_response :success
  end
end
