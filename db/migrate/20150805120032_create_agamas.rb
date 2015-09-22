class CreateAgamas < ActiveRecord::Migration
  def change
    create_table :agamas do |t|
      t.string :nama_agama

      t.timestamps null: false
    end
  end
end
