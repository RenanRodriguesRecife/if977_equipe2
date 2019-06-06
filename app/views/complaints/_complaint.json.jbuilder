json.extract! complaint, :id, :title, :name, :description, :latitude, :longitude, :date, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
