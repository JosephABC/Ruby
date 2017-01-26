class Item < ApplicationRecord
  belongs_to :user
  attr_accessor :content, :name, :tag_lists
  acts_as_taggable_on :tags

  def completed?
    !completed_at.blank?
  end

end
