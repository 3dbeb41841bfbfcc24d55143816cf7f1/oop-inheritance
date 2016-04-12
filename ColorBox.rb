class ColorBox < Box

attr_accessor :color

  def initialize(w,h,color)
    super(w,h)
    @bColor = color
  end

end
