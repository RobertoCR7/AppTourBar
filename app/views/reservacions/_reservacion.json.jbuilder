json.extract! reservacion, :id, :cantidad, :nombre, :created_at, :updated_at
json.url reservacion_url(reservacion, format: :json)
