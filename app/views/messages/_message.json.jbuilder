json.extract! message, :id, :contact_id, :body, :sent_at, :created_at, :updated_at
json.url message_url(message, format: :json)