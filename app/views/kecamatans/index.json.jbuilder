json.array!(@kecamatans) do |kecamatan|
  json.extract! kecamatan, :id, :nama_kecamatan, :alamat, :kabupaten_id
  json.url kecamatan_url(kecamatan, format: :json)
end
