require 'pry'
require 'date'

class BusinessHours
	def initialize (opening_time, closing_time)
#		@closing_time = closing_time
	end

	def update (day, opening_time, closing_time)
	end

	def closed
	end

	def calculate_deadline (interval=2, starting_time)
		if interval == 0
			return starting_time
		end
		
		date = DateTime.parse(starting_time)  # need to return "Mon Jun 07 11:10:00 2010"
		# year = date.year
		# month = date.month
		# day = date.day
		# hour = date.hour + interval
		# min = date.min
		# sec = date.sec
		# return year.to_s + ":" + month.to_s + ":" + day.to_s + ":" + hour.to_s + ":" + min.to_s + ":" + sec.to_s	
		date = date.new_offset('+02:00')
		
		return date.strftime('%a %b %d %I:%M:%S %Y')
	end	

	def convert_time (time_string)  # returns time_in_seconds
	end

	def convert_time_inverse (time_in_seconds) # returns time_in_string
	end
	
end

