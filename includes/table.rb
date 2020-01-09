class Table
  def initialize(width = 6, height = 5)
    @width = width
    @height = height
  end

  def size
    {width: @width, height: @height}
  end
end
