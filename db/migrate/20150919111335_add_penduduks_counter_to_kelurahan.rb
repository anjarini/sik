class AddPenduduksCounterToKelurahan < ActiveRecord::Migration
  def change
    add_column :kelurahans, :penduduks_counter, :integer
  end
end
