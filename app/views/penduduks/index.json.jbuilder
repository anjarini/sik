json.array!(@penduduks) do |penduduk|
  json.extract! penduduk, :nik, :no_kk, :nama :golongan_darah, :status_keluarga_id, :status_nikah, :tempat_lahir, :tanggal_lahir, :jenis_kelamin, :pekerjaan, :kewarganegaraan, :agama, :pendidikan, , :kelurahan_id, :RT, :RW, :Agama, :penghasilan, :golongan_darah_id
  json.url penduduk_url(penduduk, format: :json)
end
