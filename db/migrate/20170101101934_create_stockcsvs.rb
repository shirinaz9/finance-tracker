class CreateStockcsvs < ActiveRecord::Migration[5.0]
  def change
    create_table :stockcsvs do |t|
      t.string :symbol
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
