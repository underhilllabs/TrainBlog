require 'test_helper'

class SessionReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @session_report = session_reports(:one)
  end

  test "should get index" do
    get session_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_session_report_url
    assert_response :success
  end

  test "should create session_report" do
    assert_difference('SessionReport.count') do
      post session_reports_url, params: { session_report: { title: @session_report.title } }
    end

    assert_redirected_to session_report_url(SessionReport.last)
  end

  test "should show session_report" do
    get session_report_url(@session_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_session_report_url(@session_report)
    assert_response :success
  end

  test "should update session_report" do
    patch session_report_url(@session_report), params: { session_report: { title: @session_report.title } }
    assert_redirected_to session_report_url(@session_report)
  end

  test "should destroy session_report" do
    assert_difference('SessionReport.count', -1) do
      delete session_report_url(@session_report)
    end

    assert_redirected_to session_reports_url
  end
end
