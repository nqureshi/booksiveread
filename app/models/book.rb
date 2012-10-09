class Book < ActiveRecord::Base
  attr_accessible :author, :review, :title
end
