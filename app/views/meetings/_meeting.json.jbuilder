json.extract! meeting, :id, :start_time, :end_time, :service_id, :client_id, :stylist_id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
