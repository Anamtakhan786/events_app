module ResponseHelper

	def going(event)
		Response.where(value: "going", event_id: event.id).count
	end
	def not_going(event)
		Response.where(value: "not going",  event_id: event.id).count
	end
	def may_be(event)
		Response.where(value: "may be" , event_id: event.id).count
	end
end
