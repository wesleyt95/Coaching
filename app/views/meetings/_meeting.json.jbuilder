json.extract! meeting, :id, :description, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
