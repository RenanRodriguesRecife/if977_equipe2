json.extract! complaint, :id, :description, :latitude, :longitude, :date, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
