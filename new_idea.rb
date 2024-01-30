class New_Idea
  attr_accessor :style, :hook_size, :color

  def initialize (style, hook_size, color)
    @style = style
    @hook_size = hook_size
    @color = color
  end

  def to_s
    "\t#{@color} #{@style} using a #{@hook_size} size hook"
  end
end
