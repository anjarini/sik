class AddPenduduksCounterToKecamatan < ActiveRecord::Migration
  def change
    add_column :kecamatans, :penduduks_counter, :integer
  end
end
