class AlterTableActivitiesColumn < ActiveRecord::Migration[5.1]
  def up
    change_column :activities, :target_pelaksanaan, :integer, limit: 2
    change_column :activities, :realisasi_pelaksanaan, :integer, limit: 2
  end

  def down
    change_column :activities, :target_pelaksanaan, :date
    change_column :activities, :realisasi_pelaksanaan, :date
  end
end
