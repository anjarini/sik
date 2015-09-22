class Changepenghasilan < ActiveRecord::Migration
  def change
  	rename_column :penduduks, :penghasilan, :penghasilan_id
  end
end
