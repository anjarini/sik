class CreatePenduduks < ActiveRecord::Migration
  def change
    create_table :penduduks do |t|
      t.integer :nik
      t.integer :no_kk
      t.string :nama
      t.integer :golongan_darah_id
      t.integer :status_keluarga_id
      t.string :tempat_lahir
      t.date :tanggal_lahir
      t.string :jenis_kelamin
      t.integer :pekerjaan_id
      t.string :kewarganegaraan
      t.integer :agama_id
      t.integer :pendidikan_id
      t.integer :kelurahan_id
      t.string :rt
      t.string :rw
      t.string :alamat
      t.integer :penghasilan_id
      t.string :status
      t.integer :kabupaten_id
      t.integer :kecamatan_id


      t.timestamps null: false
    end
  end
end
