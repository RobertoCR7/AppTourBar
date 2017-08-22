json.extract! reserva, :id, :mesa, :nombre, :reserva, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
