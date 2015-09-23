class CreateKelurahans < ActiveRecord::Migration
  def change
    create_table :kelurahans do |t|
      t.integer :admin_id
      t.integer :kecamatan_id
      t.string :nama_kelurahan
      t.string :alamat_kel
      t.string :kode_pos
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
