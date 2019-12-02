json.extract! session_report, :id, :title, :created_at, :updated_at, :content, :game_date
json.url session_report_url(session_report, format: :json)
