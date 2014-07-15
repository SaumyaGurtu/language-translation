class Volunteer < ActiveRecord::Base
  belongs_to :site
  validates :vname, presence: true
end
