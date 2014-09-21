require 'pry'
require 'date'

class BusinessHours
	def initialize (opening_time, closing_time)
	end

	def update (day, opening_time, closing_time)
	end

	def closed
	end

	def calculate_deadline (interval, starting_time)
		if interval == 0
			return starting_time
		end
		
		date = DateTime.parse(starting_time)  # need to return "Mon Jun 07 11:10:00 2010"
		
		offset_seconds = interval % 60
		total_minutes = interval / 60
		offset_minutes = total_minutes % 60
		offset_hours = total_minutes / 60
#		puts offset_hours.to_s + ":" + offset_minutes.to_s + ":" + offset_seconds.to_s
		string_offset = "+" + offset_hours.to_s + ":" + offset_minutes.to_s + ":" + offset_seconds.to_s

		new_year = date.year
		new_month = date.month
		new_day = date.day
		new_hour = date.hour + offset_hours
		new_minutes = date.min + offset_minutes
		new_seconds = date.sec + offset_seconds
		
		new_month_str = new_month.to_s
		if new_month < 10 then 
			new_month_str = "0" + new_month_str
		end
		new_day_str = new_day.to_s
		if new_day < 10 then
			new_day_str = "0" + new_day_str
		end
		new_hour_str = new_hour.to_s
		if new_hour < 10 then
			new_hour_str = "0" + new_hour_str
		end
		new_minutes_str = new_minutes.to_s
		if new_minutes < 10 then
			new_minutes_str = "0" + new_minutes_str
		end		
		new_seconds_str = new_seconds.to_s
		if new_seconds < 10 then
			new_seconds_str = "0" + new_seconds_str
		end
				
		new_time_string = new_year.to_s + "-" + new_month_str + "-" + new_day_str + "-" + new_hour_str + "-" + new_minutes_str + "-" + new_seconds_str

		date = DateTime.strptime(new_time_string, '%Y-%m-%d-%H-%M-%S')
		return date.strftime('%a %b %d %I:%M:%S %Y')
	end	

	def convert_time (time_string)  # returns time_in_seconds
	end

	def convert_time_inverse (time_in_seconds) # returns time_in_string
	end
	
end

puts BusinessHours.new("","").calculate_deadline(7200, "Jun 7, 2010 9:10 AM")
