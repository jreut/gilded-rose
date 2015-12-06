require "qualityhandlerbase.rb"
require "agedbriehandler.rb"
require "backstagehandler.rb"
require "sulfurashandler.rb"
require "conjuredhandler.rb"

class GildedRose
  attr_reader :name, :days_remaining, :quality

  @@items = {:aged => 'Aged Brie', 
             :sulfuras => 'Sulfuras, Hand of Ragnaros',
            :backstage => 'Backstage passes to a TAFKAL80ETC concert',
            :conjure => 'Conjured Mana Cake'}

  def initialize(name, days_remaining, quality)
    @name = name
    @days_remaining = days_remaining
    @quality = quality

  end

  def tick
     
     if @name  == @@items[:aged]
        handler = AgedBrieHandler.new self.days_remaining, self.quality

      elsif @name == @@items[:backstage]
        handler = BackStageHandler.new self.days_remaining, self.quality

      elsif @name == @@items[:sulfuras]
        handler = SulfurasHandler.new self.days_remaining, self.quality

      elsif @name == @@items[:conjure]
        handler = ConjureHandler.new self.days_remaining, self.quality

      else
         handler = QualityHandlerBase.new self.days_remaining, self.quality
        
     end

     handler.handle #handle the rules.
     @days_remaining = handler.days
     @quality = handler.quality

  end
end
