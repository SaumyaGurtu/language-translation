class Installation < ActiveRecord::Base
 has_many :sites , dependent: :destroy
 validates :installation, presence: true
end
