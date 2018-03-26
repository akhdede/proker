class AlterColumnInSection < ActiveRecord::Migration[5.1]
  def change
    change_column :sections, :jumlah_kegiatan_tercapai, :integer, default: 0
    change_column :sections, :jumlah_kegiatan_belum_tercapai, :integer, default: 0
    change_column :sections, :total_kegiatan, :integer, default: 0
    change_column :sections, :jumlah_anggota, :integer, default: 0
  end
end
