

class QualityHandlerBase 
	
	attr_accessor :days, :quality

	MAX_QUALITY = 50 
	MIN_QUALITY = 0

	def initialize (days, quality)
		@days = days
		@quality = quality

		
	end

	def decreaseDays
		self.days -= 1
	end


	def handle  
		self.decreaseDays
		
		if @days <=0  
			@quality -= 2
		else
			@quality -= 1
		end

		
		self.ensureQuality


	end


	def ensureQuality

		if @quality > MAX_QUALITY
			@quality = MAX_QUALITY
		end

		if @quality < MIN_QUALITY
			@quality = MIN_QUALITY
		end

	end

end