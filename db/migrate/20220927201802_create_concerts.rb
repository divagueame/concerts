class CreateConcerts < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.datetime :date
      t.string :band
      t.float :price

      t.timestamps
    end
  end
end
