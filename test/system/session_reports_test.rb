# frozen_string_literal: true

require 'application_system_test_case'

class SessionReportsTest < ApplicationSystemTestCase
  setup do
    @session_report = session_reports(:one)
  end

  test 'visiting the index' do
    visit session_reports_url
    assert_selector 'h1', text: 'Session Reports'
  end

  test 'creating a Session report' do
    visit session_reports_url
    click_on 'New Session Report'

    fill_in 'Title', with: @session_report.title
    click_on 'Create Session report'

    assert_text 'Session report was successfully created'
    click_on 'Back'
  end

  test 'updating a Session report' do
    visit session_reports_url
    click_on 'Edit', match: :first

    fill_in 'Title', with: @session_report.title
    click_on 'Update Session report'

    assert_text 'Session report was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Session report' do
    visit session_reports_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Session report was successfully destroyed'
  end
end
