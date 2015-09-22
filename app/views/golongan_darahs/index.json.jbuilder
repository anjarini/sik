json.array!(@golongan_darahs) do |golongan_darah|
  json.extract! golongan_darah, :id, :golongan_darah
  json.url golongan_darah_url(golongan_darah, format: :json)
end
