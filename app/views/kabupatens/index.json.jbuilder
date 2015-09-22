json.array!(@kabupatens) do |kabupaten|
  json.extract! kabupaten, :id, :nama_kabupaten, :alamat_kab, :admin_id
  json.url kabupaten_url(kabupaten, format: :json)
end
