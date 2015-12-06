require "qualityhandlerbase.rb"

class AgedBrieHandler < QualityHandlerBase 


	def handle  

		decreaseDays
		
		 #on sell date quality increases
		if @days >= 0

			@quality += 1
		end

		if @days < 0

			@quality += 2
		end


		ensureQuality


	end


end