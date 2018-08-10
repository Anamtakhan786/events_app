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
	
	def going(event)
		Response.where(value: "going", event_id: event.id)
	end
	def not_going(event)
		Response.where(value: "not going",  event_id: event.id)
	end
	def may_be(event)
		Response.where(value: "may be" , event_id: event.id)
	end
end