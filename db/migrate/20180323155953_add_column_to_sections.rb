class AddColumnToSections < ActiveRecord::Migration[5.1]
  def change
    add_column :sections, :activities_count, :integer, default: 0
    add_column :sections, :activities_achieved, :integer, default: 0
    add_column :sections, :activities_not_achieved, :integer, default: 0
  end
end
