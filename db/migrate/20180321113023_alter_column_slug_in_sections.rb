class AlterColumnSlugInSections < ActiveRecord::Migration[5.1]
  def change
    change_column :sections, :slug, :string
  end
end
