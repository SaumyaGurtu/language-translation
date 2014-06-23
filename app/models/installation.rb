class Installation < ActiveRecord::Base
 has_many :sites , dependent: :destroy
end
