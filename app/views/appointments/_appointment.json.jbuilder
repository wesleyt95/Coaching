json.extract! appointment, :id, :name, :date, :time, :goal, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
