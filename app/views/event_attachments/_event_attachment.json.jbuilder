json.extract! event_attachment, :id, :event_id, :avatar, :created_at, :updated_at
json.url event_attachment_url(event_attachment, format: :json)
