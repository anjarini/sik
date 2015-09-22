class AddPenduduksCounterToKabupaten < ActiveRecord::Migration
  def change
    add_column :kabupatens, :penduduks_counter, :integer
  end
end
