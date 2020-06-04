class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.references :unit_measurement, belongs_to: true, null: false, foreign_key: true
      t.references :product_kind, belongs_to: true, null: false, foreign_key: true
      t.decimal :current_price, precision: 8, scale: 2, default: 0.0

      t.timestamps
    end
    add_index :products, :name, unique: true
  end
end
