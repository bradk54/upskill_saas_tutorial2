class CreatePlans2 < ActiveRecord::Migration[5.0]
  def change
    create_table :plans2s do |t|
      t.string :name
      t.decimal :price
      t.timestamps
    end
  end
end
