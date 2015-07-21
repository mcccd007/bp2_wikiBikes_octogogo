class AddBicyclesTagsJoinTable < ActiveRecord::Migration
  def change
    create_table :bicycles_tags, id: false do |t|
      t.references :bicycle
      t.references :tag

      t.timestamps
    end
  end
end
