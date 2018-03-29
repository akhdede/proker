class AlterColumnPelaksanaanTableActivities < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :target_pelaksanaan, :integer, limit: 2
    change_column :activities, :realisasi_pelaksanaan, :integer, limit: 2
  end
end
