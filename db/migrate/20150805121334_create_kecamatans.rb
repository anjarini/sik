class CreateKecamatans < ActiveRecord::Migration
  def change
    create_table :kecamatans do |t|
      t.integer :admin_id
      t.integer :kabupaten_id
      t.string :nama_kecamatan
      t.string :kode_pos
      t.float :latitude
      t.float :longitude
     
      t.timestamps null: false
    end
  end
end
