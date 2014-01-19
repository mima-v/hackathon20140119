class Event < ActiveRecord::Base
  attr_accessible :closed_at, :description, :image, :location_id, :max_member, :name, :now_member, :opened_at

  acts_as_taggable

  #validates: :name, length: {maximun: 20}, presence: true
  #validates: :description, length: {maximun: 32}, presence: true
end
