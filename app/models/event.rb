class Event < ActiveRecord::Base
  attr_accessible :closed_at, :description, :image, :location_id, :max_member, :name, :now_member, :opened_at, :tag_list

  acts_as_taggable

  validates :name, length: {maximum: 20}, presence: true
  validates :description, length: {maximum: 32}, presence: true
end
