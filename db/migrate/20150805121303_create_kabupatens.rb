class CreateKabupatens < ActiveRecord::Migration
  def change
    create_table :kabupatens do |t|
      t.integer :admin_id
      t.string :nama_kabupaten
      t.string :kode_pos
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
