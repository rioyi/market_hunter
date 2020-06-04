class CreateProductKinds < ActiveRecord::Migration[6.0]
  def change
    create_table :product_kinds do |t|
      t.string :name, null: false
      t.text :description, limit: 400

      t.timestamps
    end
    add_index :product_kinds, :name, unique: true
  end
end
