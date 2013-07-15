class Post < ActiveRecord::Base
  attr_reader :category_id
  belongs_to :category
end
