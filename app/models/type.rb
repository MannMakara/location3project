class Type < ActiveRecord::Base
	validates :property_type, presence: true
end
