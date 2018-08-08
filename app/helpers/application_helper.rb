module ApplicationHelper

	def bootstrap_key(key)
		if key == "notice" || key == "success"
			"success"
		elsif key == "error" || key == "alert"
			"danger"
		else
			key
		end
	end
	
end
