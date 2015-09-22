class CreatePekerjaans < ActiveRecord::Migration
  def change
    create_table :pekerjaans do |t|
      t.string :jenis_pekerjaan

      t.timestamps null: false
    end
  end
end
