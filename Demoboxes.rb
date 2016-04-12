class Box

attr_accessor :width
attr_accessor :height

    def initialize(w,h)
      @boxWidth = w
      @boxHeight = h
    end

    def getArea
      @boxWidth * @boxHeight
    end

end

class ColorBox < Box

attr_accessor :color

  def initialize(w,h,color)
    super(w,h)
    @color = color
  end

end

boxarea = Box.new(5,6)
boxareacolor = ColorBox.new(4,5,"Red")

puts  "Here is the area #{boxarea.getArea}"
puts  "Here is the area of the color box '#{boxareacolor.color}'"



