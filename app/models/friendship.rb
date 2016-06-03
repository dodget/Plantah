class Friendship < ActiveRecord::Base
  belongs_to :plant
  belongs_to :friend, :class_name => "Plant"
end
