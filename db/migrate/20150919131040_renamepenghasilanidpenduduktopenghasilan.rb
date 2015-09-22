class Renamepenghasilanidpenduduktopenghasilan < ActiveRecord::Migration
  def change
  	rename_column :penduduks, :penghasilan_id, :penghasilan
  end
end
