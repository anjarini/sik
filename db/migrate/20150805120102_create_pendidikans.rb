class CreatePendidikans < ActiveRecord::Migration
  def change
    create_table :pendidikans do |t|
      t.string :jenjang

      t.timestamps null: false
    end
  end
end
