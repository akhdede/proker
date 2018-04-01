class AlterTableActivitiesColumnToString < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :target_pelaksanaan, :string
    change_column :activities, :realisasi_pelaksanaan, :string
  end
end
