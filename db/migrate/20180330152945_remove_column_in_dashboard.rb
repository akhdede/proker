class RemoveColumnInDashboard < ActiveRecord::Migration[5.1]
  def change
    remove_column :sections, :activities_not_achieved
  end
end
