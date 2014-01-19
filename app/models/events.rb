class Events < ActiveRecord::Base
  attr_accessible :closed_at, :description, :image, :location_id, :max_member, :name, :now_member, :opened_at

  acts_as_taggable
end
