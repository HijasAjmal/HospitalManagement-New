module AppointmentsHelper
	def findSlotDate(msg)
		@slot = Slot.find(@slot_id)
		return @slot.date.strftime("%Y-%m-%d")
	end
end
