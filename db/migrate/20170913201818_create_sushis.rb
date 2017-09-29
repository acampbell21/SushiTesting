class CreateSushis < ActiveRecord::Migration[5.1]
  def change
    create_table :sushis do |t|
      t.string :name
      t.float :price
      t.string :ingredients

      t.timestamps
    end
  end
end
