class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.all
    @tags = Item.tag_counts_on(:tags)
  end

  def show
    @tag =  ActsAsTaggableOn::Tag.find(params[:id])
    @items = Item.tagged_with(@tag.name)
  end


end
