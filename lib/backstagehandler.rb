require "qualityhandlerbase.rb"
class BackStageHandler < QualityHandlerBase


	LOWER_BOUND = 5
	UPPER_BOUND = 10

	def handle  
		 
		decreaseDays
		

		if @days >= UPPER_BOUND
			@quality += 1

		elsif @days >= LOWER_BOUND && @days < UPPER_BOUND
			@quality += 2

		elsif @days < LOWER_BOUND && @days >= 0
			@quality += 3

		else
			@quality = 0
					
		end


		ensureQuality
	end

end