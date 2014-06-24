class Site < ActiveRecord::Base
  belongs_to :installation
  validates :name, presence: true
end
