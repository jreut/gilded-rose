require "qualityhandlerbase.rb"

class ConjureHandler < QualityHandlerBase

	def handle  

		decreaseDays

		if @days < 0
			@quality -= 4
		else
			@quality -= 2
		end

		ensureQuality

	end

end