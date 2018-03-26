class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :nama_bidang
      t.integer :jumlah_kegiatan_tercapai
      t.integer :jumlah_kegiatan_belum_tercapai
      t.integer :total_kegiatan
      t.integer :jumlah_anggota

      t.timestamps
    end
  end
end
