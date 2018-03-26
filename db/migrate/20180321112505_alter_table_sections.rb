class AlterTableSections < ActiveRecord::Migration[5.1]
  def change
    remove_column :sections, :jumlah_kegiatan_tercapai
    remove_column :sections, :jumlah_kegiatan_belum_tercapai
    remove_column :sections, :total_kegiatan
    add_column :sections, :slug, :integer
  end
end
