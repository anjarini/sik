class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :nama
      t.string :instansi
      t.string :level
      t.string :username
      t.string :password

      t.timestamps null: false
    end
  end
end
