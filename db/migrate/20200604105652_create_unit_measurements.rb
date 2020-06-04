class CreateUnitMeasurements < ActiveRecord::Migration[6.0]
  def change
    create_table :unit_measurements do |t|
      t.string :unit_name, null: false
      t.text :description, limit: 400

      t.timestamps
    end
    add_index :unit_measurements, :unit_name, unique: true
  end
end
