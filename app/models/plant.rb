class Plant < ActiveRecord::Base
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :plant

  has_many :antagonisms
  has_many :antagonists, :through => :antagonisms
  has_many :inverse_antagonisms, :class_name => "Antagonism", :foreign_key => "antagonist_id"
  has_many :inverse_antagonists, :through => :inverse_antagonisms, :source => :plant
end
