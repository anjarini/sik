# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# penduduk1= Penduduk.create([{nik: '3236221928200997'}, {no_kk:'9993003877492993923'}, {nama: 'Anjarini'}, {golongan_darah_id: '1'}, {status_keluarga_id: '1'}, {tempat_lahir: 'nganjuk'}, {tanggal_lahir: ''}, {jenis_kelamin: 'perempuan'}, {pekerjaan_id: '1'}, {kewarganegaraan: 'indonesia'}, {agama_id: '1'}, {pendidikan_id: '1'}, {kelurahan_id: '1'}, {rt: '01'}, {rw:'01'}, {alamat: 'jalan kemuning nomer 2'}, {penghasilan_id: '1'}, {status:'0'}, {kabupaten: '1'}, {kecamatan:'1'}])

# penduduk2= Penduduk.create([{nik: '1128239218392839'}, {no_kk:'0838381222'}, {nama: 'Ronggo'}, {golongan_darah_id: '2'}, {status_keluarga_id: '2'}, {tempat_lahir: 'nganjuk'}, {tanggal_lahir: ''}, {jenis_kelamin: 'perempuan'}, {pekerjaan_id: '2'}, {kewarganegaraan: 'indonesia'}, {agama_id: '2'}, {pendidikan_id: '2'}, {kelurahan_id: '2'}, {rt: '02'}, {rw:'02'}, {alamat: 'jalan kemuning nomer 2'}, {penghasilan_id: '2'}, {status:'0'}, {kabupaten: '1'}, {kecamatan:'2'}])

# penduduk3= Penduduk.create([{nik: '8429239403402000'}, {no_kk:'9999902010011'}, {nama: 'Cevy'}, {golongan_darah_id: '3'}, {status_keluarga_id: '3'}, {tempat_lahir: 'nganjuk'}, {tanggal_lahir: ''}, {jenis_kelamin: 'perempuan'}, {pekerjaan_id: '3'}, {kewarganegaraan: 'indonesia'}, {agama_id: '3'}, {pendidikan_id: '3'}, {kelurahan_id: '3'}, {rt: '01'}, {rw:'01'}, {alamat: 'jalan kemuning nomer 2'}, {penghasilan_id: '3'}, {status:'1'}, {kabupaten: '1'}, {kecamatan:'3'}])

agama1= Agama.create([{nama_agama: 'Islam'}])
agama2= Agama.create([{nama_agama: 'Kristen'}])
agama3= Agama.create([{nama_agama: 'Katolik'}])
agama4= Agama.create([{nama_agama: 'Budha'}])
agama5= Agama.create([{nama_agama: 'Hindu'}])
agama6= Agama.create([{nama_agama: 'Kepercayaan'}])

pendidikan1= Pendidikan.create([{jenjang: 'sd'}])
pendidikan2= Pendidikan.create([{jenjang: 'smp'}])
pendidikan3= Pendidikan.create([{jenjang: 'smk'}])
pendidikan4= Pendidikan.create([{jenjang: 'S1'}])

penghasilan1= Penghasilan.create([{penghasilan: '100000'}])
penghasilan2= Penghasilan.create([{penghasilan: '300000'}])
penghasilan3= Penghasilan.create([{penghasilan: '500000'}])
penghasilan4= Penghasilan.create([{penghasilan: '1000000'}])
penghasilan5= Penghasilan.create([{penghasilan: '1500000'}])

pekerjaan1= Pekerjaan.create([{jenis_pekerjaan: 'Pelajar'}])
pekerjaan2= Pekerjaan.create([{jenis_pekerjaan: 'Mahasiswa'}])
pekerjaan3= Pekerjaan.create([{jenis_pekerjaan: 'Pns'}])
pekerjaan4= Pekerjaan.create([{jenis_pekerjaan: 'Pedagang'}])

status_keluarga1= StatusKeluarga.create([{status_keluarga: 'Kepala keluarga'}])
status_keluarga2= StatusKeluarga.create([{status_keluarga: 'Istri'}])
status_keluarga3= StatusKeluarga.create([{status_keluarga: 'Anak'}])
status_keluarga4= StatusKeluarga.create([{status_keluarga: 'Mertua'}])

admin1= Admin.create([{nama:'sari'}, {instansi:'pegawai kabupaten'}, {level:''}, {username:''}, {password:''}])
admin2= Admin.create([{nama:'tito'}, {instansi:'pegawai kabupaten'}, {level:''}, {username:''}, {password:''}])
admin3= Admin.create([{nama:'wipo'}, {instansi:'pegawai kabupaten'}, {level:''}, {username:''}, {password:''}])
admin4= Admin.create([{nama:'roro'}, {instansi:'pegawai kabupaten'}, {level:''}, {username:''}, {password:''}])
admin5= Admin.create([{nama:'fafa'}, {instansi:'pegawai kabupaten'}, {level:''}, {username:''}, {password:''}])

kabupaten1= Kabupaten.create([{admin_id: '1'}, {nama_kabupaten: 'Nganjuk'}, {kode_pos:''}])

kecamatan1= Kecamatan.create([{admin_id: '2'}, {kabupaten_id: '1'}, {nama_kecamatan: 'Berbek'}, {kode_pos:''}])
kecamatan2= Kecamatan.create([{admin_id: '2'}, {kabupaten_id: '1'}, {nama_kecamatan: 'Baron'}, {kode_pos:''}])
kecamatan3= Kecamatan.create([{admin_id: '3'}, {kabupaten_id: '1'}, {nama_kecamatan: 'Rejoso'}, {kode_pos:''}])

kelurahan1= Kelurahan.create([{admin_id: '2'}, {kecamatan_id: '1'}, {nama_kelurahan: 'Balongrejo'}, {kode_pos:''}])
kelurahan2= Kelurahan.create([{admin_id: '2'}, {kecamatan_id: '2'}, {nama_kelurahan: 'Banaran kulon'}, {kode_pos:''}])
kelurahan3= Kelurahan.create([{admin_id: '3'}, {kecamatan_id: '3'}, {nama_kelurahan: 'Buduran'}, {kode_pos:''}])

golongan_darah1= GolonganDarah.create([{golongan_darah: 'A'}])
golongan_darah2= GolonganDarah.create([{golongan_darah: 'B'}])
golongan_darah3= GolonganDarah.create([{golongan_darah: 'AB'}])
golongan_darah4= GolonganDarah.create([{golongan_darah: '0'}])

