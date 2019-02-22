json.extract! event, :id, :nom, :date, :heure, :user_id, :lieu, :created_at, :updated_at
json.url event_url(event, format: :json)
