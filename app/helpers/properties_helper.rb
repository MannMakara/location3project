module PropertiesHelper
	def display_for(property)
		if ! property.view_all?
			link_to "View All", "#{root_path}/?view_all=true", class: "viewall"
		else
			link_to "Next Page", "#{root_path}/?view_all=true", class: "veiwall"
		end
	end	
end
