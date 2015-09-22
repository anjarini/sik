class CreateKabupatens < ActiveRecord::Migration
  def change
    create_table :kabupatens do |t|
      t.integer :admin_id
      t.string :nama_kabupaten
      t.string :kode_pos
      

      t.timestamps null: false
    end
  end
end
