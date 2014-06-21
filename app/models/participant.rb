class Participant < ActiveRecord::Base
  belongs_to :events
  accepts_nested_attributes_for :events, allow_destroy: true

end
