class GildedRose
  attr_reader :name, :days_remaining, :quality

  @@items = {:aged => 'Aged Brie', 
             :sulfuras => 'Sulfuras, Hand of Ragnaros',
            :backstage => 'Backstage passes to a TAFKAL80ETC concert'}

  def initialize(name, days_remaining, quality)
    @name = name
    @days_remaining = days_remaining
    @quality = quality

  end

  def tick
     

    if @name !=  @@items[:aged] && @name != @@items[:backstage]
      
      if @quality > 0
        if @name != @@items[:sulfuras]
          @quality -= 1
        end
      end


    else
      if @quality < 50
        @quality += 1
        if @name == @@items[:backstage]
          if @days_remaining < 11
            if @quality < 50
              @quality += 1
            end
          end
          if @days_remaining < 6
            if @quality < 50
              @quality += 1
            end
          end
        end
      end

    end



    if @name != @@items[:sulfuras]
      @days_remaining -= 1
    end

    if @days_remaining < 0

      if @name != @@items[:aged]

        if @name != @@items[:backstage]
          if @quality > 0
            if @name != @@items[:sulfuras]
              @quality -= 1
            end
          end
        else
          @quality = @quality - @quality
        end

      else

        if @quality < 50
          @quality += 1
        end

      end

    end


  end
end
