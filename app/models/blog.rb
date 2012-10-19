class Blog < ActiveRecord::Base
  attr_accessible :description, :tag, :title, :author, :category_id
  belongs_to :category
  def to_param
    "#{title}"
  end
end
