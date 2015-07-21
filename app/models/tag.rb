class Tag < ActiveRecord::Base
  belongs_to :bicycle
  has_many :bicycles
  belongs_to :tag_category
end
