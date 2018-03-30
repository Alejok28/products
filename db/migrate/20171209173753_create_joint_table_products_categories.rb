class CreateJointTableProductsCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :joint_table_products_categories do |t|
      t.references :product, foreign_key: true
      t.references :categories, foreign_key: true
    end
  end
end
