class CreateSimpleAdminCategoriesMigration < ActiveRecord::Migration[5.1]
  def change
    create_table :simple_admin_categories do |t|
      t.string :title
      
      t.timestamps null: false
    end
  end
end