class Note < ActiveRecord::Base
  has_many :subnotes
end
