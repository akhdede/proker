class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :nama_kegiatan
      t.date :target_pelaksanaan
      t.date :realisasi_pelaksanaan
      t.integer :status
      t.integer :section_id

      t.timestamps
    end
  end
end
