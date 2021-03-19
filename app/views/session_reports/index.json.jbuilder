# frozen_string_literal: true

json.array! @session_reports, partial: 'session_reports/session_report', as: :session_report
