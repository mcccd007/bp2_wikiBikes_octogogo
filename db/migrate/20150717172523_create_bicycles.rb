class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.string :make
      t.string :model

      t.timestamps null: false
    end
  end
end
