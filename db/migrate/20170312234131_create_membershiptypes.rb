class CreateMembershiptypes < ActiveRecord::Migration[5.0]
  def change
    create_table :membershiptypes do |t|
      t.string :name
      t.decimal :price
      t.timestamps
    end
  end
end
