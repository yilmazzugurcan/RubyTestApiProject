class CreateKeys < ActiveRecord::Migration[7.0]
  def change
    create_table :keys do |t|
      t.references :device, null: false, foreign_key: true
      t.string :key

      t.timestamps
    end
  end
end
