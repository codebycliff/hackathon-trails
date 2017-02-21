class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.references :trail, foreign_key: true
      t.references :transit, foreign_key: true

      t.timestamps
    end
  end
end
