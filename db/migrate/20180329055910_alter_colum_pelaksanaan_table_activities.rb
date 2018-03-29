class AlterColumPelaksanaanTableActivities < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :target_pelaksanaan, :integer
    change_column :activities, :realisasi_pelaksanaan, :integer
  end
end
