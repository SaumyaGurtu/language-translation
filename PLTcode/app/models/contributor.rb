class Contributor < ActiveRecord::Base
  belongs_to :site
  validates :name, presence: true
end
