class Tag < ActiveRecord::Base
  belongs_to :bicycle
  has_and_belongs_to_many :bicycles
  belongs_to :tag_category
end
