json.array!(@kelurahans) do |kelurahan|
  json.extract! kelurahan, :id, :nama_kelurahan, :alamat_kel, :kecamatan_id
  json.url kelurahan_url(kelurahan, format: :json)
end
