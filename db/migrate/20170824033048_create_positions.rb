class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.string :position

      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
