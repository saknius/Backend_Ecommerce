class CreateDreamshops < ActiveRecord::Migration[7.0]
  def change
    create_table :dreamshops do |t|
      t.string :title
      t.string :string
      t.integer :year
      t.integer :price
      t.integer :publish
      t.string :categry
      t.string :quantity
      t.integer :runtime

      t.timestamps
    end
  end
end
