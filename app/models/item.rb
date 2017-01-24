class Item < ApplicationRecord
  belongs_to :user
  attr_accessor :content, :name, :tag_list
  acts_as_taggable

  def completed?
    !completed_at.blank?
  end

end
