class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      
      t.string :keyword
      t.integer :agama_id
      t.integer :penghasilan_id
      t.integer :pekerjaan_id
      t.integer :kelurahan_id
      t.integer :kecamatan_id
      t.integer :kabupaten_id
      t.integer :golongan_darah_id
      t.integer :pendidikan_id
      t.integer :status_keluarga_id

      t.timestamps null: false
    end
  end
end
