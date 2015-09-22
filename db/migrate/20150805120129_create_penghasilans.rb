class CreatePenghasilans < ActiveRecord::Migration
  def change
    create_table :penghasilans do |t|
      t.string :penghasilan

      t.timestamps null: false
    end
  end
end
