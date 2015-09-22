class CreateGolonganDarahs < ActiveRecord::Migration
  def change
    create_table :golongan_darahs do |t|
      t.string :golongan_darah

      t.timestamps null: false
    end
  end
end
