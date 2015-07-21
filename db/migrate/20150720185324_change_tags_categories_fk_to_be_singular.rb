class ChangeTagsCategoriesFkToBeSingular < ActiveRecord::Migration
  def change
    change_table :tags do |t|
      t.rename :tag_categories_id, :tag_category_id
    end
  end
end
