json.array!(@pendidikans) do |pendidikan|
  json.extract! pendidikan, :id, :jenjang
  json.url pendidikan_url(pendidikan, format: :json)
end
