class Box

attr_accessor :width
attr_accessor :height

    def initialize(w,h)
      @boxWidth = w
      @boxHeight = h
    end

    def getArea
      puts "here is the area of the box #{@boxWidth*@boxHeight}"
    end

end
