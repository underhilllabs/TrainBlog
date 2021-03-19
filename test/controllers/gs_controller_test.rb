# frozen_string_literal: true

require 'test_helper'

class GsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @g = gs(:one)
  end

  test 'should get index' do
    get gs_url
    assert_response :success
  end

  test 'should get new' do
    get new_g_url
    assert_response :success
  end

  test 'should create g' do
    assert_difference('G.count') do
      post gs_url, params: { g: {} }
    end

    assert_redirected_to g_url(G.last)
  end

  test 'should show g' do
    get g_url(@g)
    assert_response :success
  end

  test 'should get edit' do
    get edit_g_url(@g)
    assert_response :success
  end

  test 'should update g' do
    patch g_url(@g), params: { g: {} }
    assert_redirected_to g_url(@g)
  end

  test 'should destroy g' do
    assert_difference('G.count', -1) do
      delete g_url(@g)
    end

    assert_redirected_to gs_url
  end
end
