class Bicycle < ActiveRecord::Base
  has_and_belongs_to_many :tags

  def set_tags ids
    logger.debug "GOT IDS: #{ids.inspect}"
    self.tag_ids = ids
    self.save
  end
end
