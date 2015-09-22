json.array!(@pekerjaans) do |pekerjaan|
  json.extract! pekerjaan, :id, :jenis_pekerjaan
  json.url pekerjaan_url(pekerjaan, format: :json)
end
