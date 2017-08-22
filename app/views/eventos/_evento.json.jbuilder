json.extract! evento, :id, :dia, :foto, :descripcion, :created_at, :updated_at
json.url evento_url(evento, format: :json)
