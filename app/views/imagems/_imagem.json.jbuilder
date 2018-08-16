json.extract! imagem, :id, :avatar, :created_at, :updated_at
json.url imagem_url(imagem, format: :json)
