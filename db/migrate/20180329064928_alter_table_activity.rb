class AlterTableActivity < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :target_pelaksanaan, :date
    change_column :activities, :realisasi_pelaksanaan, :date
  end
end
