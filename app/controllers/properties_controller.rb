class PropertiesController < ApplicationController
	def index
		if params[:view_all]
			@properties = Property.view_all
		else
			@properties = Property.view_limit(4)
		end
	end
	def show
		@property = Property.find(params[:id])
		@galleries = @property.galleries
	end
end
