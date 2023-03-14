json.extract! event, :id, :name, :description, :start_time, :finish_time, :location, :location_frame, :created_at, :updated_at
json.url event_url(event, format: :json)
