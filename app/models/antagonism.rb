class Antagonism < ActiveRecord::Base
  belongs_to :plant
  belongs_to :antagonist, :class_name => "Plant"
end
