class Book < ActiveRecord::Base   
  has_one :picture, :dependent => :destroy
end
