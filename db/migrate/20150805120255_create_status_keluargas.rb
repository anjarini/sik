class CreateStatusKeluargas < ActiveRecord::Migration
  def change
    create_table :status_keluargas do |t|
      t.string :status_keluarga

      t.timestamps null: false
    end
  end
end
