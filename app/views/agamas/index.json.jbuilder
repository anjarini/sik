json.array!(@agamas) do |agama|
  json.extract! agama, :id, :nama_agama
  json.url agama_url(agama, format: :json)
end
