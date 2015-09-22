json.array!(@status_keluargas) do |status_keluarga|
  json.extract! status_keluarga, :id, :status_keluarga
  json.url status_keluarga_url(status_keluarga, format: :json)
end
